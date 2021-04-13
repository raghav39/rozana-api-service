import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/invoice.dart';
import 'package:rozana_api_service/data/model/dto/promo_code_offer.dart';

part 'promo_code_invoice.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class PromoCodeInvoice extends Equatable implements BaseDto {
  @override
  int? id;

  final Invoice invoice;

  final String displayText;

  final bool success;

  double promoCodeDiscount;

  PromoCodeOffer? promoCodeOfferDTO;

  PromoCodeInvoice(
      {required this.id,
      required this.invoice,
      required this.displayText,
      required this.success,
      promoCodeDiscount,
      this.promoCodeOfferDTO})
      : this.promoCodeDiscount = 0,
        super() {
    if (promoCodeDiscount == null) {
      this.promoCodeDiscount = 0;
      return;
    }
    if (promoCodeDiscount is double) {
      this.promoCodeDiscount = promoCodeDiscount;
      return;
    }
    if (promoCodeDiscount is int) {
      this.promoCodeDiscount = promoCodeDiscount.toDouble();
      return;
    }
  }

  factory PromoCodeInvoice.fromJson(Map<String, dynamic> json) => _$PromoCodeInvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$PromoCodeInvoiceToJson(this);

  static const fromJsonFactory = _$PromoCodeInvoiceFromJson;

  @override
  List<Object?> get props => [id, invoice, displayText, success, promoCodeDiscount, promoCodeOfferDTO];
}
