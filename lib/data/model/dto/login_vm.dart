import 'package:json_annotation/json_annotation.dart';

part 'login_vm.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class LoginVm {
  String username;

  String password;

  bool rememberMe;

  LoginVm({required this.username, required this.password}) : rememberMe = true;

  factory LoginVm.fromJson(Map<String, dynamic> json) =>
      _$LoginVmFromJson(json);

  static const fromJsonFactory = _$LoginVmFromJson;

  Map<String, dynamic> toJson() => _$LoginVmToJson(this);
}
