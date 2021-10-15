// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromoCodeOffer _$PromoCodeOfferFromJson(Map<String, dynamic> json) =>
    PromoCodeOffer(
      id: json['id'] as int,
      code: json['code'] as String,
      description: json['description'] as String,
      terms: json['terms'] as String?,
    );

Map<String, dynamic> _$PromoCodeOfferToJson(PromoCodeOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'terms': instance.terms,
    };
