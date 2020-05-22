// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationConfig _$OrganizationConfigFromJson(Map<String, dynamic> json) {
  return OrganizationConfig(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    contactNumber: json['contactNumber'] as String,
    addressId: json['addressId'] as int,
    logoUrl: json['logoUrl'] as String,
    gstin: json['gstin'] as String,
    deliveryCharge: (json['deliveryCharge'] as num)?.toDouble(),
    freeDeliveryThresholdAmount:
        (json['freeDeliveryThresholdAmount'] as num)?.toDouble(),
    orderingDateThreshold: json['orderingDateThreshold'] as int,
  );
}

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
    };
