// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_boy_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryBoyUser _$DeliveryBoyUserFromJson(Map<String, dynamic> json) {
  return DeliveryBoyUser(
    deliveryBoy: json['deliveryBoy'] == null
        ? null
        : DeliveryBoy.fromJson(json['deliveryBoy'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeliveryBoyUserToJson(DeliveryBoyUser instance) =>
    <String, dynamic>{
      'deliveryBoy': instance.deliveryBoy?.toJson(),
      'user': instance.user?.toJson(),
    };
