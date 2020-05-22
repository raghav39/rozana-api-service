import 'package:json_annotation/json_annotation.dart';

part 'login_vm.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class LoginVm {
  String username;

  String password;

  bool rememberMe;

  LoginVm({this.username, this.password}) : rememberMe = true;

  factory LoginVm.fromJson(Map<String, dynamic> json) =>
      _$LoginVmFromJson(json);

  static const fromJsonFactory = _$LoginVmFromJson;

  Map<String, dynamic> toJson() => _$LoginVmToJson(this);
}

/*

part 'login_vm.jser.dart';

class LoginVm {
  String username;

  String password;

  bool rememberMe;

  LoginVm({this.username, this.password}) : rememberMe = true;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = LoginVmSerializer();

  static LoginVm fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();
}

@GenSerializer()
class LoginVmSerializer extends Serializer<LoginVm> with _$LoginVmSerializer {}
*/
