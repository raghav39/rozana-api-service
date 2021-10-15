// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationConfig _$OrganizationConfigFromJson(Map<String, dynamic> json) =>
    OrganizationConfig(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "rozana@noisytempo.com",
      contactNumber: json['contactNumber'] as String? ?? "",
      addressId: json['addressId'] as int? ?? -1,
      logoUrl: json['logoUrl'] as String? ?? "",
      gstin: json['gstin'] as String? ?? "",
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0,
      freeDeliveryThresholdAmount:
          (json['freeDeliveryThresholdAmount'] as num?)?.toDouble() ?? 0,
      orderingDateThreshold: json['orderingDateThreshold'] as int? ?? 100,
      maxOrderModificationTime: json['maxOrderModificationTime'] as int? ?? 100,
      razorPayKey: json['razorPayKey'] as String? ?? "",
      acceptOrders: json['acceptOrders'] as bool? ?? true,
    );

Map<String, dynamic> _$OrganizationConfigToJson(OrganizationConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addressId': instance.addressId,
      'name': instance.name,
      'email': instance.email,
      'contactNumber': instance.contactNumber,
      'logoUrl': instance.logoUrl,
      'gstin': instance.gstin,
      'deliveryCharge': instance.deliveryCharge,
      'freeDeliveryThresholdAmount': instance.freeDeliveryThresholdAmount,
      'orderingDateThreshold': instance.orderingDateThreshold,
      'maxOrderModificationTime': instance.maxOrderModificationTime,
      'razorPayKey': instance.razorPayKey,
      'acceptOrders': instance.acceptOrders,
    };
