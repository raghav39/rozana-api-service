import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/invoice.dart';
import 'package:rozana_api_service/data/model/dto/invoice_draft.dart';
import 'package:rozana_api_service/data/model/dto/promo_code_invoice.dart';
import 'package:rozana_api_service/data/model/dto/promo_code_offer.dart';

part 'promo_code_offer_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class PromoCodeOfferApiService extends ChopperService {
  static PromoCodeOfferApiService create([ChopperClient? client]) =>
      _$PromoCodeOfferApiService(client);

  @Post(path: "promo-code-offer/discount-value")
  Future<Response<PromoCodeInvoice>> getPromoCodeDiscountValue(@Body() InvoiceDraft invoice);

  @Get(path: "promo-code-offers")
  Future<Response<List<PromoCodeOffer>>> getPromoCodes();
}
