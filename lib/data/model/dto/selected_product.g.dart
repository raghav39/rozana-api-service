// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedProduct _$SelectedProductFromJson(Map<String, dynamic> json) =>
    SelectedProduct(
      id: json['id'] as int?,
      frequency: json['frequency'] as String?,
      quantity: json['quantity'],
      discontinue: json['discontinue'] as bool?,
      productId: json['productId'] as int?,
      productName: json['productName'] as String?,
      deliverySlotId: json['deliverySlotId'] as int?,
      deliverySlotStartTime: json['deliverySlotStartTime'] as String?,
      deliverySlotEndTime: json['deliverySlotEndTime'] as String?,
      deliveryBoyUserId: json['deliveryBoyUserId'] as int?,
      deliveryBoyName: json['deliveryBoyName'] as String?,
    );

Map<String, dynamic> _$SelectedProductToJson(SelectedProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frequency': instance.frequency,
      'quantity': instance.quantity,
      'discontinue': instance.discontinue,
      'productId': instance.productId,
      'productName': instance.productName,
      'deliverySlotId': instance.deliverySlotId,
      'deliverySlotStartTime': instance.deliverySlotStartTime,
      'deliverySlotEndTime': instance.deliverySlotEndTime,
      'deliveryBoyUserId': instance.deliveryBoyUserId,
      'deliveryBoyName': instance.deliveryBoyName,
    };
