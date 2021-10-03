// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) => ProductImage(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      productId: json['productId'] as int,
    );

Map<String, dynamic> _$ProductImageToJson(ProductImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'productId': instance.productId,
    };
