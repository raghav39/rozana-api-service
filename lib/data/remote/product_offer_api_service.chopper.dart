// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_offer_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProductOfferApiService extends ProductOfferApiService {
  _$ProductOfferApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductOfferApiService;

  @override
  Future<Response<List<ProductOffer>>> getProductOffers() {
    final $url = '/api/product-offers';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProductOffer>, ProductOffer>($request);
  }

  @override
  Future<Response<List<ProductOffer>>> getProductOffersForProducts(
      List<int> productIds) {
    final $url = '/api/product-offers';
    final $params = <String, dynamic>{'productId.in': productIds};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ProductOffer>, ProductOffer>($request);
  }
}
