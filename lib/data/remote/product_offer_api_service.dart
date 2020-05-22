import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/product_offer.dart';

part 'product_offer_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class ProductOfferApiService extends ChopperService {

  static ProductOfferApiService create([ChopperClient client]) => _$ProductOfferApiService(client);

  @Get(path: "product-offers")
  Future<Response<List<ProductOffer>>> getProductOffers();


  @Get(path: "product-offers")
  Future<Response<List<ProductOffer>>> getProductOffersForProducts(@Query('productId.in') List<int> productIds);
}
