// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCustomer _$UserCustomerFromJson(Map<String, dynamic> json) {
  return UserCustomer(
    customer: json['customer'] == null
        ? null
        : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    wallet: json['wallet'] == null
        ? null
        : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
  )..id = json['id'] as int;
}

Map<String, dynamic> _$UserCustomerToJson(UserCustomer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer?.toJson(),
      'address': instance.address?.toJson(),
      'user': instance.user?.toJson(),
      'wallet': instance.wallet?.toJson(),
    };
