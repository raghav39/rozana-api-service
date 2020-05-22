import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:event_bus/event_bus.dart';
import 'package:http/io_client.dart';
import 'package:rozana_api_service/data/events/UnAuthorizedResponseEvent.dart';
import 'package:rozana_api_service/data/local/preference_manager.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/banner_image.dart';
import 'package:rozana_api_service/data/model/dto/customer.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy_user.dart';
import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';
import 'package:rozana_api_service/data/model/dto/device.dart';
import 'package:rozana_api_service/data/model/dto/invoice.dart';
import 'package:rozana_api_service/data/model/dto/jwt_token.dart';
import 'package:rozana_api_service/data/model/dto/line_item.dart';
import 'package:rozana_api_service/data/model/dto/locality.dart';
import 'package:rozana_api_service/data/model/dto/login_vm.dart';
import 'package:rozana_api_service/data/model/dto/order_transaction.dart';
import 'package:rozana_api_service/data/model/dto/organization_config.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';
import 'package:rozana_api_service/data/model/dto/product_category.dart';
import 'package:rozana_api_service/data/model/dto/product_image.dart';
import 'package:rozana_api_service/data/model/dto/product_offer.dart';
import 'package:rozana_api_service/data/model/dto/product_offer_item.dart';
import 'package:rozana_api_service/data/model/dto/product_variant.dart';
import 'package:rozana_api_service/data/model/dto/resource_error.dart';
import 'package:rozana_api_service/data/model/dto/user.dart';
import 'package:rozana_api_service/data/model/dto/user_customer.dart';
import 'package:rozana_api_service/data/model/dto/wallet.dart';
import 'package:rozana_api_service/data/remote/address_api_service.dart';
import 'package:rozana_api_service/data/remote/auth_api_service.dart';
import 'package:rozana_api_service/data/remote/delivery_boy_api_service.dart';
import 'package:rozana_api_service/data/remote/delivery_slot_api_service.dart';
import 'package:rozana_api_service/data/remote/device_api_service.dart';
import 'package:rozana_api_service/data/remote/invoice_api_service.dart';
import 'package:rozana_api_service/data/remote/locality_api_service.dart';
import 'package:rozana_api_service/data/remote/order_transaction_api_service.dart';
import 'package:rozana_api_service/data/remote/organization_config_api_service.dart';
import 'package:rozana_api_service/data/remote/product_api_service.dart';
import 'package:rozana_api_service/data/remote/product_offer_api_service.dart';
import 'package:rozana_api_service/data/remote/user_customer_api_service.dart';
import 'package:rozana_api_service/utils/app_constants.dart';

class ApiCaller {
  String organizationAppKey;
  ChopperClient authenticatedChopperClient;

  ChopperClient unAuthenticatedChopperClient;

  ChopperClient googleLocationChopperClient;

  final PreferenceManager preferenceManager;

  final EventBus eventBus;

  final converter;

  ApiCaller(this.preferenceManager, this.organizationAppKey, this.eventBus)
      : converter = JsonSerializableConverter({
          UserCustomer: UserCustomer.fromJsonFactory,
          LoginVm: LoginVm.fromJsonFactory,
          JWTToken: JWTToken.fromJsonFactory,
          OrganizationConfig: OrganizationConfig.fromJsonFactory,
          ProductImage: ProductImage.fromJsonFactory,
          OrderTransaction: OrderTransaction.fromJsonFactory,
          DeliveryBoy: DeliveryBoy.fromJsonFactory,
          User: User.fromJsonFactory,
          DeliveryBoyUser: DeliveryBoyUser.fromJsonFactory,
          Product: Product.fromJsonFactory,
          ProductCategory: ProductCategory.fromJsonFactory,
          BannerImage: BannerImage.fromJsonFactory,
          ProductVariant: ProductVariant.fromJsonFactory,
          UserCustomer: UserCustomer.fromJsonFactory,
          Customer: Customer.fromJsonFactory,
          User: User.fromJsonFactory,
          Address: Address.fromJsonFactory,
          Wallet: Wallet.fromJsonFactory,
          Address: Address.fromJsonFactory,
          Invoice: Invoice.fromJsonFactory,
          LineItem: LineItem.fromJsonFactory,
          Product: Product.fromJsonFactory,
          Device: Device.fromJsonFactory,
          DeliverySlot: DeliverySlot.fromJsonFactory,
          Locality: Locality.fromJsonFactory,
          ProductOffer: ProductOffer.fromJsonFactory,
          ProductOfferItem: ProductOfferItem.fromJsonFactory,
        });

  Future<ChopperClient> getAuthenticatedClient() async {
    if (organizationAppKey == null || organizationAppKey.isEmpty) {
      return null;
    }
    String token = await preferenceManager.getAuthToken();

    if (token != null && authenticatedChopperClient != null) {
      return authenticatedChopperClient;
    }
    return updateClient();
  }

  Future<ChopperClient> updateClient() async {
    String token = await preferenceManager.getAuthToken();

    //This will add the authorization token to all the outgoing requests
    Future<Request> authHeader(Request request) async => applyHeader(
          request,
          "Authorization",
          "Bearer ${token ?? ''}",
        );

    //This will add the X-App-Key to all the outgoing request
    Future<Request> xAppKeyHeader(Request request) async => applyHeader(
          request,
          "X-App-Key",
          organizationAppKey,
        );

    //This method will fire an event to notify all the listeners about the 401 response received by any request.
    Future<Response> checkForUnAuthorizedResponse(Response response) async {
      if (response.statusCode == HttpStatus.unauthorized) {
        authenticatedChopperClient = null;
        eventBus.fire(UnAuthorizedResponseEvent());
      }
      return response;
    }

    authenticatedChopperClient = new ChopperClient(
      client: IOClient(),
      baseUrl: AppConstants.SERVER_ENDPOINT,
      converter: converter,
      errorConverter: converter,
      interceptors: [authHeader, xAppKeyHeader, checkForUnAuthorizedResponse],
      services: [
        ProductApiService.create(),
        UserCustomerApiService.create(),
        InvoiceApiService.create(),
        DeliverySlotApiService.create(),
        OrganizationConfigApiService.create(),
        OrderTransactionApiService.create(),
        DeliveryBoyApiService.create(),
        DeviceApiService.create(),
        AddressApiService.create(),
        ProductOfferApiService.create()
      ],
    );
    return authenticatedChopperClient;
  }

  Future<ChopperClient> getUnAuthenticatedClient() async {
    if (organizationAppKey == null || organizationAppKey.isEmpty) {
      return null;
    }
    if (unAuthenticatedChopperClient != null) {
      return unAuthenticatedChopperClient;
    }
    Future<Request> xAppKeyHeader(Request request) async => applyHeader(
          request,
          "X-App-Key",
          organizationAppKey,
        );
    unAuthenticatedChopperClient = new ChopperClient(
      client: IOClient(),
      baseUrl: AppConstants.SERVER_ENDPOINT,
      converter: converter,
      errorConverter: converter,
      interceptors: [xAppKeyHeader],
      services: [
        AuthApiService.create(),
      ],
    );
    return unAuthenticatedChopperClient;
  }

  Future<ChopperClient> getGoogleLocationClient() async {
    if (googleLocationChopperClient != null) {
      return googleLocationChopperClient;
    }
    Future<Request> xAppKeyHeader(Request request) async => applyHeader(
          request,
          "Accept",
          "application/json",
        );
    googleLocationChopperClient = new ChopperClient(
      client: IOClient(),
      baseUrl: "https://maps.googleapis.com",
      converter: converter,
      errorConverter: converter,
      interceptors: [xAppKeyHeader],
      services: [
        LocalityApiService.create(),
      ],
    );
    return googleLocationChopperClient;
  }

  Future<AuthApiService> getAuthService() async {
    return (await getUnAuthenticatedClient())?.getService<AuthApiService>();
  }

  Future<ProductApiService> getProductService() async {
    return (await getAuthenticatedClient())?.getService<ProductApiService>();
  }

  Future<UserCustomerApiService> getUserCustomerService() async {
    return (await getAuthenticatedClient())
        ?.getService<UserCustomerApiService>();
  }

  Future<InvoiceApiService> getInvoiceService() async {
    return (await getAuthenticatedClient())?.getService<InvoiceApiService>();
  }

  Future<DeliverySlotApiService> getDeliverySlotService() async {
    return (await getAuthenticatedClient())
        ?.getService<DeliverySlotApiService>();
  }

  Future<OrganizationConfigApiService> getOrganizationService() async {
    return (await getAuthenticatedClient())
        ?.getService<OrganizationConfigApiService>();
  }

  Future<OrderTransactionApiService> getOrderTransactionApiService() async {
    return (await getAuthenticatedClient())
        ?.getService<OrderTransactionApiService>();
  }

  Future<DeliveryBoyApiService> getDeliveryBoyApiService() async {
    return (await getAuthenticatedClient())
        ?.getService<DeliveryBoyApiService>();
  }

  Future<DeviceApiService> getDeviceApiService() async {
    return (await getAuthenticatedClient())?.getService<DeviceApiService>();
  }

  Future<AddressApiService> getAddressService() async {
    return (await getAuthenticatedClient())?.getService<AddressApiService>();
  }

  Future<ProductOfferApiService> getProductOfferService() async {
    return (await getAuthenticatedClient())
        ?.getService<ProductOfferApiService>();
  }

  Future<LocalityApiService> getLocalityApiService() async {
    return (await getGoogleLocationClient())?.getService<LocalityApiService>();
  }
}

typedef T JsonFactory<T>(Map<String, dynamic> json);

class JsonSerializableConverter extends JsonConverter {
  final Map<Type, JsonFactory> factories;

  JsonSerializableConverter(this.factories);

  T _decodeMap<T>(Map<String, dynamic> values) {
    /// Get jsonFactory using Type parameters
    /// if not found or invalid, throw error or return null
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      return null;
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(List values) =>
      values.where((v) => v != null).map<T>((v) => _decode<T>(v)).toList();

  dynamic _decode<T>(entity) {
    if (entity is Iterable) return _decodeList<T>(entity);

    if (entity is Map) return _decodeMap<T>(entity);

    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertResponse(response);

    return jsonRes.replace<ResultType>(body: _decode<Item>(jsonRes.body));
  }

  @override
  // all objects should implements toJson method
  Request convertRequest(Request request) => super.convertRequest(request);

  Response convertError<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertError(response);

    return jsonRes.replace<ResourceError>(
      body: ResourceError.fromJsonFactory(jsonRes.body),
    );
  }
}
/*

class JaguarConverter extends JsonConverter {
  dynamic _decode<Item>(entity) {
    /// handle case when we want to access to Map<String, dynamic> directly
    /// getResource or getMapResource
    /// Avoid dynamic or unconverted value, this could lead to several issues
    if (entity is Item) return entity;

    final serializer = repository.getByType<Item>(
      Item,
    );

    /// throw serializer not found error;
    if (serializer == null) return null;

    if (entity is Map) return serializer.fromMap(entity);

    if (entity is List) return serializer.fromList(entity.cast<Map>());

    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, ItemType>(
      Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertResponse<dynamic, ItemType>(response);

    return jsonRes.replace<ResultType>(
      body: _decode<ItemType>(jsonRes.body),
    );
  }

  @override
  Request convertRequest(Request request) => super.convertRequest(
        request.replace(
          body: repository.to(request.body),
        ),
      );

  final _errorSerializer = ResourceErrorSerializer();

  @override
  Response convertError<ResultType, ItemType>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertError(response);
    return jsonRes.replace(body: _errorSerializer.fromMap(jsonRes.body));
  }
}
*/
