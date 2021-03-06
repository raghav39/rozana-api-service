// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromoCodeInvoice _$PromoCodeInvoiceFromJson(Map<String, dynamic> json) {
  return PromoCodeInvoice(
    id: json['id'] as int?,
    invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    displayText: json['displayText'] as String,
    success: json['success'] as bool,
    promoCodeDiscount: json['promoCodeDiscount'],
    promoCodeOfferDTO: json['promoCodeOfferDTO'] == null
        ? null
        : PromoCodeOffer.fromJson(
            json['promoCodeOfferDTO'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PromoCodeInvoiceToJson(PromoCodeInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice': instance.invoice.toJson(),
      'displayText': instance.displayText,
      'success': instance.success,
      'promoCodeDiscount': instance.promoCodeDiscount,
      'promoCodeOfferDTO': instance.promoCodeOfferDTO?.toJson(),
    };
