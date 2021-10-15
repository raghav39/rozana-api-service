// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_offer_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PromoCodeOfferApiService extends PromoCodeOfferApiService {
  _$PromoCodeOfferApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PromoCodeOfferApiService;

  @override
  Future<Response<PromoCodeInvoice>> getPromoCodeDiscountValue(
      InvoiceDraft invoice) {
    final $url = '/api/promo-code-offer/discount-value';
    final $body = invoice;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<PromoCodeInvoice, PromoCodeInvoice>($request);
  }

  @override
  Future<Response<List<PromoCodeOffer>>> getPromoCodes() {
    final $url = '/api/promo-code-offers';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<PromoCodeOffer>, PromoCodeOffer>($request);
  }
}
