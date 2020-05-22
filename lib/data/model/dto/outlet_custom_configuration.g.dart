// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_custom_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutletCustomConfiguration _$OutletCustomConfigurationFromJson(
    Map<String, dynamic> json) {
  return OutletCustomConfiguration(
    id: json['id'] as int,
    maxOrderModificationTime: json['maxOrderModificationTime'] as int,
    rozanaAppKey: json['rozanaAppKey'] as String,
    organizationName: json['organizationName'] as String,
    customerAppPackageName: json['customerAppPackageName'] as String,
    stockManagementEnabled: json['stockManagementEnabled'] as bool,
  );
}

Map<String, dynamic> _$OutletCustomConfigurationToJson(
        OutletCustomConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maxOrderModificationTime': instance.maxOrderModificationTime,
      'rozanaAppKey': instance.rozanaAppKey,
      'organizationName': instance.organizationName,
      'customerAppPackageName': instance.customerAppPackageName,
      'stockManagementEnabled': instance.stockManagementEnabled,
    };
