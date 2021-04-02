library rozana_api_service;

import 'package:device_info/device_info.dart';
import 'package:event_bus/event_bus.dart';
import 'package:rozana_api_service/data/data_manager.dart';
import 'package:rozana_api_service/data/local/preference_manager.dart';
import 'package:rozana_api_service/data/product_cache_manager.dart';
import 'package:rozana_api_service/data/product_image_cache_manager.dart';
import 'package:rozana_api_service/data/product_offer_cache_manager.dart';
import 'package:rozana_api_service/data/remote/api_caller.dart';
import 'package:rozana_api_service/data/user_customer_cache_manager.dart';

class RozanaApiService {
  String appKey;
  final String googleMapsApiKey;
  late ApiCaller _apiCaller;
  late DataManager dataManager;
  final EventBus eventBus;

  static RozanaApiService? _instance;

  RozanaApiService._({required this.appKey, required this.googleMapsApiKey, required this.eventBus}) {
    final preferenceManager = PreferenceManager();
    this._apiCaller = ApiCaller(preferenceManager, appKey, eventBus);
    final productCacheManager = ProductCacheManager(100000);
    final userCustomerCacheManager = UserCustomerCacheManager(100000);
    final productOfferCacheManager = ProductOfferCacheManager(100000);
    final productImageCacheManager = ProductImageCacheManager(100000);
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    dataManager = DataManager(
        apiCaller: this._apiCaller,
        preferenceManager: preferenceManager,
        productCacheManager: productCacheManager,
        userCustomerCacheManager: userCustomerCacheManager,
        productOfferCacheManager: productOfferCacheManager,
        deviceInfo: deviceInfo,
        productImageCacheManager: productImageCacheManager,
        googleMapsApiKey: googleMapsApiKey,
        eventBus: eventBus);
  }

  factory RozanaApiService({appKey, googleMapsApiKey, required EventBus eventBus}) {
    if (_instance == null && appKey != null && googleMapsApiKey != null) {
      _instance = RozanaApiService._(appKey: appKey, googleMapsApiKey: googleMapsApiKey, eventBus: eventBus);
    }
    return _instance!;
  }

  //TODO: Please improve the code to remove this hack
  updateAppKey(String appKey) {
    this.appKey = appKey;
    this._apiCaller.organizationAppKey = appKey;
  }
}
