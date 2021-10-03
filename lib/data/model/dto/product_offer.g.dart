// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOffer _$ProductOfferFromJson(Map<String, dynamic> json) => ProductOffer(
      id: json['id'] as int,
      offerImageUrl: json['offerImageUrl'] as String,
      description: json['description'] as String,
      productOfferItems: (json['productOfferItems'] as List<dynamic>)
          .map((e) => ProductOfferItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      offerId: json['offerId'] as int,
    );

Map<String, dynamic> _$ProductOfferToJson(ProductOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offerImageUrl': instance.offerImageUrl,
      'description': instance.description,
      'productOfferItems':
          instance.productOfferItems.map((e) => e.toJson()).toList(),
      'offerId': instance.offerId,
    };
