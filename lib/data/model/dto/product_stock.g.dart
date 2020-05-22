// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductStock _$ProductStockFromJson(Map<String, dynamic> json) {
  return ProductStock(
    id: json['id'] as int,
    quantity: (json['quantity'] as num)?.toDouble(),
    productId: json['productId'] as int,
  );
}

Map<String, dynamic> _$ProductStockToJson(ProductStock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'productId': instance.productId,
    };
