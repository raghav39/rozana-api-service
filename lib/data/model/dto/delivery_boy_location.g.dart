// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_boy_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryBoyLocation _$DeliveryBoyLocationFromJson(Map<String, dynamic> json) =>
    DeliveryBoyLocation(
      id: json['id'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      userId: json['userId'] as int? ?? -1,
    );

Map<String, dynamic> _$DeliveryBoyLocationToJson(
        DeliveryBoyLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timestamp': instance.timestamp.toIso8601String(),
      'userId': instance.userId,
    };
