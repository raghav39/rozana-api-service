// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    id: json['id'] as int,
    contactNumber: json['contactNumber'] as String,
    address1: json['address1'] as String,
    address2: json['address2'] as String,
    landmark: json['landmark'] as String,
    city: json['city'] as String,
    zipCode: json['zipCode'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    alternatePhone: json['alternatePhone'] as String,
    locationLat: (json['locationLat'] as num)?.toDouble(),
    locationLong: (json['locationLong'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'contactNumber': instance.contactNumber,
      'address1': instance.address1,
      'address2': instance.address2,
      'landmark': instance.landmark,
      'city': instance.city,
      'zipCode': instance.zipCode,
      'state': instance.state,
      'country': instance.country,
      'alternatePhone': instance.alternatePhone,
      'locationLat': instance.locationLat,
      'locationLong': instance.locationLong,
    };
