// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
      id: json['id'] as int?,
      itemPrice: json['itemPrice'],
      quantity: json['quantity'],
      status: json['status'] as String?,
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      scheduledDeliveryTime: json['scheduledDeliveryTime'] == null
          ? null
          : DateTime.parse(json['scheduledDeliveryTime'] as String),
      deliveryLocationLat: json['deliveryLocationLat'],
      deliveryLocationLong: json['deliveryLocationLong'],
      deliveredById: json['deliveredById'] as int?,
      deliveredByName: json['deliveredByName'] as String?,
      selectedProductId: json['selectedProductId'] as int?,
      selectedProductName: json['selectedProductName'] as String?,
      selectedProductUnit: json['selectedProductUnit'] as String?,
      invoiceId: json['invoiceId'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      taxRates: (json['taxRates'] as List<dynamic>?)
          ?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerName: json['customerName'] as String?,
      customerId: json['customerId'] as int?,
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) => <String, dynamic>{
      'id': instance.id,
      'itemPrice': instance.itemPrice,
      'quantity': instance.quantity,
      'status': instance.status,
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'scheduledDeliveryTime':
          instance.scheduledDeliveryTime?.toIso8601String(),
      'deliveryLocationLat': instance.deliveryLocationLat,
      'deliveryLocationLong': instance.deliveryLocationLong,
      'deliveredById': instance.deliveredById,
      'deliveredByName': instance.deliveredByName,
      'selectedProductId': instance.selectedProductId,
      'selectedProductName': instance.selectedProductName,
      'selectedProductUnit': instance.selectedProductUnit,
      'invoiceId': instance.invoiceId,
      'product': instance.product?.toJson(),
      'taxRates': instance.taxRates?.map((e) => e.toJson()).toList(),
      'customerName': instance.customerName,
      'customerId': instance.customerId,
    };
