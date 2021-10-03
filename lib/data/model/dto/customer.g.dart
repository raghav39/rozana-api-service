// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as int?,
      uniqueCode: json['uniqueCode'] as String?,
      taxTreatment: json['taxTreatment'] as String? ?? "CONSUMER",
      taxpayerIdentificationNumber:
          json['taxpayerIdentificationNumber'] as String?,
      addressId: json['addressId'] as int?,
      userId: json['userId'] as int?,
      additionalAddresses: (json['additionalAddresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'uniqueCode': instance.uniqueCode,
      'taxTreatment': instance.taxTreatment,
      'taxpayerIdentificationNumber': instance.taxpayerIdentificationNumber,
      'addressId': instance.addressId,
      'userId': instance.userId,
      'additionalAddresses':
          instance.additionalAddresses?.map((e) => e.toJson()).toList(),
    };
