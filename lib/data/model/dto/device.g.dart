// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device(
    uuid: json['uuid'] as String,
    name: json['name'] as String,
    token: json['token'] as String,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'token': instance.token,
      'userId': instance.userId,
    };
