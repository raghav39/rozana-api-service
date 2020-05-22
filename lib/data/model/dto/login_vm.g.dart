// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginVm _$LoginVmFromJson(Map<String, dynamic> json) {
  return LoginVm(
    username: json['username'] as String,
    password: json['password'] as String,
  )..rememberMe = json['rememberMe'] as bool;
}

Map<String, dynamic> _$LoginVmToJson(LoginVm instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
    };
