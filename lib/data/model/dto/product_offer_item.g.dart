// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_offer_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOfferItem _$ProductOfferItemFromJson(Map<String, dynamic> json) {
  return ProductOfferItem(
    id: json['id'] as int,
    discountValue: (json['discountValue'] as num)?.toDouble(),
    discountValueInPercentage: json['discountValueInPercentage'] as bool,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    productOfferId: json['productOfferId'] as int,
  );
}

Map<String, dynamic> _$ProductOfferItemToJson(ProductOfferItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discountValue': instance.discountValue,
      'discountValueInPercentage': instance.discountValueInPercentage,
      'product': instance.product?.toJson(),
      'productOfferId': instance.productOfferId,
    };
