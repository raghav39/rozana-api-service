// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    price: (json['price'] as num)?.toDouble(),
    discountedPrice: (json['discountedPrice'] as num)?.toDouble(),
    discontinue: json['discontinue'] as bool,
    category: json['category'] as String,
    taxationCode: json['taxationCode'] as String,
    unit: json['unit'] as String,
    extId: json['extId'] as String,
    brandName: json['brandName'] as String,
    priceInclusiveTax: json['priceInclusiveTax'] as bool,
    outOfStock: json['outOfStock'] as bool,
    alias: json['alias'] as String,
    organizationId: json['organizationId'] as int,
    imageId: json['imageId'] as int,
    imageUrl: json['imageUrl'] as String,
    taxStrategyId: json['taxStrategyId'] as int,
    taxStrategyType: json['taxStrategyType'] as String,
    productStocks: (json['productStocks'] as List)
        ?.map((e) =>
            e == null ? null : ProductStock.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variants: (json['variants'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'discontinue': instance.discontinue,
      'category': instance.category,
      'taxationCode': instance.taxationCode,
      'unit': instance.unit,
      'extId': instance.extId,
      'brandName': instance.brandName,
      'priceInclusiveTax': instance.priceInclusiveTax,
      'outOfStock': instance.outOfStock,
      'alias': instance.alias,
      'organizationId': instance.organizationId,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'taxStrategyId': instance.taxStrategyId,
      'taxStrategyType': instance.taxStrategyType,
      'productStocks':
          instance.productStocks?.map((e) => e?.toJson())?.toList(),
      'variants': instance.variants?.map((e) => e?.toJson())?.toList(),
    };
