// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliverySlot _$DeliverySlotFromJson(Map<String, dynamic> json) => DeliverySlot(
      id: json['id'] as int,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$DeliverySlotToJson(DeliverySlot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
