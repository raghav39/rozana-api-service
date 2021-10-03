// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) =>
    ProductVariant(
      id: json['id'] as int,
      name: json['name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductVariantToJson(ProductVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
