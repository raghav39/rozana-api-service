// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_boy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryBoy _$DeliveryBoyFromJson(Map<String, dynamic> json) {
  return DeliveryBoy(
    id: json['id'] as int?,
    contactNumber: json['contactNumber'],
    alternateContactNumber: json['alternateContactNumber'],
    trackingEnabled: json['trackingEnabled'] as bool?,
    userId: json['userId'] as int?,
    userLogin: json['userLogin'] as String?,
  );
}

Map<String, dynamic> _$DeliveryBoyToJson(DeliveryBoy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contactNumber': instance.contactNumber,
      'alternateContactNumber': instance.alternateContactNumber,
      'trackingEnabled': instance.trackingEnabled,
      'userId': instance.userId,
      'userLogin': instance.userLogin,
    };
