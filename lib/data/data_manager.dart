import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:device_info/device_info.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:rozana_api_service/data/events/BadRequestResponseEvent.dart';
import 'package:rozana_api_service/data/local/preference_manager.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/banner_image.dart';
import 'package:rozana_api_service/data/model/dto/customer.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy_user.dart';
import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';
import 'package:rozana_api_service/data/model/dto/device.dart';
import 'package:rozana_api_service/data/model/dto/invoice.dart';
import 'package:rozana_api_service/data/model/dto/invoice_draft.dart';
import 'package:rozana_api_service/data/model/dto/jwt_token.dart';
import 'package:rozana_api_service/data/model/dto/locality.dart';
import 'package:rozana_api_service/data/model/dto/login_vm.dart';
import 'package:rozana_api_service/data/model/dto/organization_config.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';
import 'package:rozana_api_service/data/model/dto/product_category.dart';
import 'package:rozana_api_service/data/model/dto/product_image.dart';
import 'package:rozana_api_service/data/model/dto/product_variant.dart';
import 'package:rozana_api_service/data/model/dto/promo_code_invoice.dart';
import 'package:rozana_api_service/data/model/dto/promo_code_offer.dart';
import 'package:rozana_api_service/data/model/dto/user.dart';
import 'package:rozana_api_service/data/model/dto/user_customer.dart';
import 'package:rozana_api_service/data/product_cache_manager.dart';
import 'package:rozana_api_service/data/product_image_cache_manager.dart';
import 'package:rozana_api_service/data/product_offer_cache_manager.dart';
import 'package:rozana_api_service/data/remote/address_api_service.dart';
import 'package:rozana_api_service/data/remote/api_caller.dart';
import 'package:rozana_api_service/data/remote/organization_config_api_service.dart';
import 'package:rozana_api_service/data/remote/product_api_service.dart';
import 'package:rozana_api_service/data/remote/user_customer_api_service.dart';
import 'package:rozana_api_service/data/user_customer_cache_manager.dart';
import 'package:rozana_api_service/utils/jwt_util.dart';

import 'events/UnAuthorizedResponseEvent.dart';
import 'model/dto/product_offer.dart';

class DataManager {
  final ApiCaller apiCaller;
  final PreferenceManager preferenceManager;

  final ProductCacheManager productCacheManager;
  final UserCustomerCacheManager userCustomerCacheManager;
  final ProductOfferCacheManager productOfferCacheManager;
  final ProductImageCacheManager productImageCacheManager;
  final DeviceInfoPlugin deviceInfo;
  final String googleMapsApiKey;
  final EventBus eventBus;

  static const int PAGE_SIZE = 20;

  DataManager(
      {required this.apiCaller,
      required this.preferenceManager,
      required this.productCacheManager,
      required this.userCustomerCacheManager,
      required this.productOfferCacheManager,
      required this.deviceInfo,
      required this.googleMapsApiKey,
      required this.productImageCacheManager,
      required this.eventBus}) {
    eventBus.on<UnAuthorizedResponseEvent>().listen((event) {
      logoutUser();
    });
    eventBus.on<BadRequestResponseEvent>().listen((event) {});
  }

  /// This will save FCM token in the sharedPreference and send it to the server
  void saveFCMToken(String? token, TargetPlatform targetPlatform) async {
    String deviceName;
    bool isPhysicalDevice;
    String deviceUUID;
    switch (targetPlatform) {
      case TargetPlatform.android:
        AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
        deviceName = androidDeviceInfo.device;
        isPhysicalDevice = androidDeviceInfo.isPhysicalDevice;
        deviceUUID = androidDeviceInfo.androidId;
        break;
      case TargetPlatform.iOS:
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        deviceName = iosDeviceInfo.model;
        isPhysicalDevice = iosDeviceInfo.isPhysicalDevice;
        deviceUUID = iosDeviceInfo.identifierForVendor;
        break;
      default:
        deviceName = "";
        deviceUUID = "";
        isPhysicalDevice = false;
    }
    if (!isPhysicalDevice || token == null || token.isEmpty) {
      return;
    }
    Device deviceDTO = Device(name: deviceName, token: token, uuid: deviceUUID);
    (await apiCaller.getDeviceApiService()).createDeviceInfo(deviceDTO);
  }

  /// This will make the api call synchronized
  Future<Null> registerCustomer(String phoneNumber) async {
    await (await apiCaller.getAuthService()).registerCustomer(
        UserCustomer(address: Address(contactNumber: phoneNumber), customer: Customer(), user: User()));
  }

  /// This will make the api call synchronized
  Future<Null> activateCustomer(String phoneNumber, String otp) async {
    await (await apiCaller.getAuthService()).activateCustomer(otp, phoneNumber);
  }

  /// This will make the api call synchronized
  Future<Null> authenticateUserUsingOTP(String phoneNumber, String password) async {
    JWTToken? token =
        (await (await apiCaller.getAuthService()).authenticateUser(LoginVm(username: phoneNumber, password: password)))
            .body;
    if (token != null) {
      await preferenceManager.storeAuthToken(token.id_token);
      apiCaller.updateClient();
    }
  }

  Future<Null> authenticateUserUsingLogin(String login, String password) async {
    JWTToken? token =
        (await (await apiCaller.getAuthService()).authenticateUser(LoginVm(username: login, password: password)))
            .body;
    if (token != null) {
      await preferenceManager.storeAuthToken(token.id_token);
      apiCaller.updateClient();
    }
  }

  Future<bool> isLoggedIn() async {
    String? token = await preferenceManager.getAuthToken();
    if (token == null || !JWTUtil(token).isTokenValid() || JWTUtil(token).isTokenExpired()) return false;
    return true;
  }

  Future<Null> logoutUser() async {
    await preferenceManager.clearAuthToken();
  }

  Future<Null> updateCoordinatesLocally(double latitude, double longitude) async {
    await preferenceManager.storeAddressLocationCoordinates(latitude, longitude);
  }

  Future<Address?> getCustomerAddressFromServer() async {
    UserCustomer? userCustomer = await this.getCustomerData();
    Address? address = userCustomer?.address;
    return address;
  }

  Future<Address?> updateAddress(Address address) async {
    AddressApiService addressService = await apiCaller.getAddressService();
    return (await addressService.updateAddress(address)).body;
  }

  /// This will make the api call synchronized
  Future<List<ProductCategory>?> getProductCategories() async {
    try {
      return (await (await apiCaller.getProductService()).getAllProductCategories()).body;
    } on Response catch (_) {
      return [];
    }
  }

  Future<ProductCategory?> getProductCategory(int productCategoryId) async {
    try {
      return (await (await apiCaller.getProductService()).getProductCategory(productCategoryId)).body;
    } on Response catch (_) {
      return null;
    }
  }

  Future<ProductCategory?> updateProductCategory(ProductCategory productCategory) async {
    try {
      return (await (await apiCaller.getProductService()).updateProductCategory(productCategory)).body;
    } on Response catch (_) {
      return null;
    }
  }

  Future<ProductCategory?> createProductCategory(ProductCategory productCategory) async {
    try {
      return (await (await apiCaller.getProductService()).createProductCategory(productCategory)).body;
    } on Response catch (_) {
      return null;
    }
  }

  Future<ProductCategory?> removeProductCategoryFromProduct(int productCategoryId, List<Product> products) async {
    try {
      return (await (await apiCaller.getProductService()).removeProductCategoryFromProduct(productCategoryId, products))
          .body;
    } on Response catch (_) {
      return null;
    }
  }

  Future<int?> deleteProductCategory(int productCategoryId) async {
    try {
      return (await (await apiCaller.getProductService()).deleteProductCategory(productCategoryId)).statusCode;
    } on Response catch (_) {
      return null;
    }
  }

  Future<List<Product>?> getProducts({int? categoryId, int index = 0, bool featured = false}) async {
    print('calling getProducts() with index: $index and categoryId: $categoryId');
    int page = 0;
    if (index > 0) {
      page = (index ~/ PAGE_SIZE);
    }

    List<String> sort = <String>[];
    sort.add('name');
    sort.add('asc');
    List<Product>? products;
    try {
      if (categoryId != null) {
        products = (await (await apiCaller.getProductService())
                .getAllProductsForCategoryId(categoryId, page: page, sort: sort, featured: featured))
            .body;
      } else {
        products =
            (await (await apiCaller.getProductService()).getAllProducts(page: page, sort: sort, featured: featured))
                .body;
      }
      if (products != null) {
        productCacheManager.updateProducts(products);
      }
    } on Response catch (_) {
      products = [];
    }
    return products;
  }

  Future<dynamic> deleteProduct(int productId) async {
    return (await (await apiCaller.getProductService()).deleteProduct(productId)).body;
  }

  Future<List<Product>?> searchProduct({required String query, int index = 0}) async {
    print('searching for $query');
    List<String> sort = <String>[];
    sort.add('name');
    sort.add('asc');

    int page = 0;
    if (index > 0) {
      page = (index ~/ PAGE_SIZE);
    }
    try {
      return (await (await apiCaller.getProductService()).searchProducts(query, page: page, sort: sort)).body;
    } on Response catch (_) {
      return [];
    }
  }

  Future<Product?> getProduct(int productId) async {
    Product? cachedProduct = productCacheManager.getProduct(productId);
    if (cachedProduct == null) {
      try {
        Product? product = (await (await apiCaller.getProductService()).getProduct(productId)).body;
        if (product != null) {
          productCacheManager.addProduct(product);
        }
        return product;
      } on Response catch (_) {
        return null;
      }
    }
    return cachedProduct;
  }

  Future<UserCustomer?> getCustomerData() async {
    UserCustomer? cachedUserCustomer = userCustomerCacheManager.getUserCustomer();
    if (cachedUserCustomer == null) {
      try {
        UserCustomerApiService userCustomerApiService = await apiCaller.getUserCustomerService();
        List<UserCustomer>? list = (await userCustomerApiService.getAllUserCustomers()).body;
        if (list != null && list.length > 0) {
          UserCustomer userCustomer = list[0];
          userCustomerCacheManager.updateUserCustomer(userCustomer);
          return userCustomer;
        }
      } on Response catch (_) {
        return null;
      }
    }
    return cachedUserCustomer;
  }

  Future<List<UserCustomer>?> getAllUserCustomers({int index = 0}) async {
    print('calling getAllUserCustomers() with index: $index');
    int page = 0;
    if (index > 0) {
      page = (index ~/ PAGE_SIZE);
    }

    List<String> sort = <String>[];
    sort.add('asc');
    try {
      List<UserCustomer>? userCustomers =
          (await (await apiCaller.getUserCustomerService()).getAllUserCustomers(page: page, sort: sort)).body;
      if (userCustomers != null) {
        userCustomerCacheManager.updateUserCustomers(userCustomers);
      }
      return userCustomers;
    } on Response catch (_) {
      return [];
    }
  }

  Future<UserCustomer?> getUserCustomer(int customerId) async {
    UserCustomer? userCustomer = userCustomerCacheManager.getUserCustomer(customerId: customerId);
    if (userCustomer == null) {
      try {
        UserCustomerApiService userCustomerApiService = await apiCaller.getUserCustomerService();
        userCustomer = (await userCustomerApiService.getUserCustomer(customerId)).body;
        if (userCustomer != null) {
          userCustomerCacheManager.updateUserCustomer(userCustomer);
        }
      } on Response catch (_) {
        userCustomer = null;
      }
    }
    return userCustomer;
  }

  Future<List<UserCustomer>?> searchUserCustomers(String query) async {
    try {
      UserCustomerApiService? userCustomerApiService = await apiCaller.getUserCustomerService();
      return (await userCustomerApiService.searchUserCustomers(query)).body;
    } on Response catch (_) {
      return null;
    }
  }

  Future<UserCustomer?> updateUserCustomer(UserCustomer userCustomer) async {
    UserCustomerApiService? userCustomerApiService = await apiCaller.getUserCustomerService();
    UserCustomer? updatedUserCustomer = (await userCustomerApiService.updateUserCustomers(userCustomer)).body;
    if (updatedUserCustomer != null) {
      userCustomerCacheManager.updateUserCustomer(updatedUserCustomer);
    }
    return updatedUserCustomer;
  }

  Future<List<BannerImage>?> getBannerImages() async {
    ProductApiService? productApiService = await apiCaller.getProductService();
    List<BannerImage>? response;
    try {
      response = (await productApiService.getAllBannerImages()).body;
    } on Response catch (_) {
      response = [];
    }
    return response;
  }

  Future<Invoice?> createOrder(InvoiceDraft invoice) async {
    invoice.draft = true;
    final service = await apiCaller.getInvoiceService();
    final response = await service.createInvoice(invoice);
    if(!response.isSuccessful){
      throw new Future.error("invoice create failed: ${response.error.toString()}");
    }
    return response.body;
  }

  Future<Invoice?> updateInvoiceDraftToSent(Invoice invoice) async {
    if (invoice.id == null) {
      throw Future.error('Invoice ID cannot be null');
    }
    invoice.draft = false;
    final service = await apiCaller.getInvoiceService();
    final response = await service.updateInvoiceDraft(invoice);
    if(!response.isSuccessful){
      throw new Future.error("invoice update failed: ${response.error.toString()}");
    }
    return response.body;
  }

  Future<PromoCodeInvoice?> applyPromoCodeOffer(Invoice invoice) async {
    final service = await apiCaller.getPromoCodeOfferApiService();
    final response = await service.getPromoCodeDiscountValue(invoice);
    if(!response.isSuccessful){
      throw new Future.error("promo code application failed: ${response.error.toString()}");
    }
    return response.body;
  }
  Future<List<PromoCodeOffer>?> getPromoCodeOffers() async {
    final service = await apiCaller.getPromoCodeOfferApiService();
    final response = await service.getPromoCodes();
    if(!response.isSuccessful){
      throw new Future.error("promo code application failed: ${response.error.toString()}");
    }
    return response.body;
  }

  Future<Invoice?> assignDeliveryBoyToInvoice(Invoice invoice, DeliveryBoyUser deliveryBoyUser) async {
    Invoice updatedInvoice = Invoice.fromJson(invoice.toJson());
    updatedInvoice.deliveredById = deliveryBoyUser.user.id;
    final service = await apiCaller.getInvoiceService();
    final response = await service.updateInvoice(updatedInvoice);
    if(!response.isSuccessful){
      throw new Future.error("invoice create failed: ${response.error.toString()}");
    }
    return response.body;
  }

  Future<Invoice?> updateOrderStatusOfInvoice(Invoice invoice, String orderStatus) async {
    Invoice updatedInvoice = Invoice.fromJson(invoice.toJson());
    updatedInvoice.orderStatus = orderStatus;
    final service = await apiCaller.getInvoiceService();
    final response = await service.updateOrderStatus(updatedInvoice);
    if(!response.isSuccessful){
      throw new Future.error("invoice status update failed: ${response.error.toString()}");
    }
    return response.body;
  }

  Future<List<DeliverySlot>?> getDeliverySlots() async {
    List<DeliverySlot>? response;
    try {
      response = (await (await apiCaller.getDeliverySlotService()).getAllDeliverySlots()).body;
    } on Response catch (_) {
      response = [];
    }
    return response;
  }

  Future<OrganizationConfig?> getOrganizationConfig() async {
    OrganizationConfigApiService organizationApiService = await apiCaller.getOrganizationService();
    OrganizationConfig? response;
    try {
      response = (await organizationApiService.getOrganizationConfig()).body;
    } on Response catch (_) {
      response = null;
    }
    return response;
  }

  Future<List<Invoice>?> getInvoices({DateTime? date, int index = 0}) async {
    int page = 0;
    if (index > 0) {
      page = (index ~/ PAGE_SIZE);
    }

    List<Invoice>? response;
    try {
      if (date != null) {
        response =
            (await (await apiCaller.getInvoiceService()).getInvoiceByDate("${date.toIso8601String()}", page: page))
                .body;
      } else {
        response = (await (await apiCaller.getInvoiceService()).getAllInvoices(page: page)).body;
      }
    } on Response catch (_) {
      response = [];
    }
    return response;
  }

  Future<Invoice?> getInvoice(int invoiceId) async {
    Invoice? response;
    try {
      response = (await (await apiCaller.getInvoiceService()).getInvoice(invoiceId)).body;
    } on Response catch (_) {
      response = null;
    }
    return response;
  }

  Future<List<Product>> getProductVariants(Product product) async {
    List<Product> response;
    try {
      List<ProductVariant>? productVariants =
          (await (await apiCaller.getProductService()).getAllProductVariants(product.name)).body;
      if (productVariants == null || productVariants.isEmpty) {
        return [];
      }
      response = productVariants[0].products;
    } on Response catch (_) {
      response = [];
    }
    return response;
  }

  Future<List<Product>?> getProductSuggestions(Product product) async {
    List<Product>? response;
    try {
      response = (await (await apiCaller.getProductService()).getSuggestedProducts(product.id)).body;
      if (response == null || response.isEmpty) {
        return [];
      }
    } on Response catch (_) {
      response = [];
    }
    return response;
  }

  Future<int?> getProductCount() async {
    try {
      return (await (await apiCaller.getProductService()).getProductCount()).body;
    } on Response catch (_) {
      return 0;
    }
  }

  Future<int?> getOrderTransactionCount() async {
    try {
      return (await (await apiCaller.getOrderTransactionApiService()).getOrderTransactionCount()).body;
    } on Response catch (_) {
      return 0;
    }
  }

  Future<int?> getCustomerCount() async {
    try {
      return (await (await apiCaller.getUserCustomerService()).getUserCustomerCount()).body;
    } on Response catch (_) {
      return 0;
    }
  }

  Future<int?> getDeliveryBoyCount() async {
    try {
      return (await (await apiCaller.getDeliveryBoyApiService()).getDeliveryBoyCount()).body;
    } on Response catch (_) {
      return 0;
    }
  }

  Future<int?> getInvoiceCount() async {
    try {
      return (await (await apiCaller.getInvoiceService()).getInvoiceCount()).body;
    } on Response catch (_) {
      return 0;
    }
  }

  Future<List<DeliveryBoyUser>?> getDeliveryBoys() async {
    try {
      return (await (await apiCaller.getDeliveryBoyApiService()).getAllDeliveryBoys()).body;
    } on Response catch (_) {
      return [];
    }
  }

  Future<Product?> updateProduct(Product product) async {
    return (await (await apiCaller.getProductService()).updateProduct(product)).body;
  }

  Future<Product?> createProduct(Product product) async {
    return (await (await apiCaller.getProductService()).createProduct(product)).body;
  }

  Future<Locality?> getLocalityByZipCode(String zipCode) async {
    return (await (await apiCaller.getLocalityApiService()).getLocalityByZipCode(zipCode, true, this.googleMapsApiKey))
        .body;
  }

  Future<List<ProductOffer>?> getProductOffers() async {
    List<ProductOffer>? cachedProductOffers = productOfferCacheManager.getProductOffers();
    if (cachedProductOffers == null) {
      try {
        List<ProductOffer>? productOfers = (await (await apiCaller.getProductOfferService()).getProductOffers()).body;
        if (productOfers != null) {
          productOfferCacheManager.updateProductOffers(productOfers);
        }
      } on Response catch (_) {
        return [];
      }
    }
    return cachedProductOffers;
  }

  Future<List<ProductImage>?> getProductImages(int productId) async {
    List<ProductImage>? cachedProductImages = productImageCacheManager.getProductImages(productId);
    if (cachedProductImages == null) {
      try {
        cachedProductImages =
            (await (await apiCaller.getProductService()).getAllProductImagesForProduct(productId)).body;
        if (cachedProductImages != null) {
          productImageCacheManager.updateProductImages(productId, cachedProductImages);
        }
      } on Response catch (_) {
        return [];
      }
    }
    return cachedProductImages;
  }

  Future<ProductImage?> createProductImage(ProductImage productImage) async {
    try {
      ProductImage? updatedProductImage =
          (await (await apiCaller.getProductService()).createProductImage(productImage)).body;
      if (updatedProductImage != null) {
        productImageCacheManager.addProductImage(productImage.productId, updatedProductImage);
      }
      return updatedProductImage;
    } on Response catch (_) {
      return null;
    }
  }

  Future<ProductImage?> updateProductImage(ProductImage productImage) async {
    try {
      ProductImage? updatedProductImage =
          (await (await apiCaller.getProductService()).updateProductImage(productImage)).body;
      if (updatedProductImage != null) {
        productImageCacheManager.addProductImage(productImage.productId, updatedProductImage);
      }
      return updatedProductImage;
    } on Response catch (_) {
      return null;
    }
  }

  Future<List<ProductOffer>> getProductOffersForProducts(List<Product> products) async {
    return [];
    /*List<ProductOffer>? cachedProductOffers = productOfferCacheManager.getProductOffers();
    if (cachedProductOffers == null) {
      try {
        return (await (await apiCaller.getProductOfferService())
                .getProductOffersForProducts(products.map((product) => product.id).toList()))
            ?.body;
      } on Response catch (_) {
        return [];
      }
    }
    Map<int, Product> productMap = Map();
    products.forEach((Product product) => productMap.putIfAbsent(product.id, () => product));
    return cachedProductOffers.where((ProductOffer productOffer) {
      productOffer.productOfferItems
          .any((ProductOfferItem productOfferItem) => productMap.containsKey(productOfferItem.product.id));
    }).toList();*/
  }
}
