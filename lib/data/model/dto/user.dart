import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class User extends Equatable {
  int? id;

  String? login;

  String? firstName;

  String? lastName;

  String? email;

  String? imageUrl;

  String? langKey;

  User({this.id, this.login, this.firstName, this.lastName, this.email, this.imageUrl, this.langKey});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const fromJsonFactory = _$UserFromJson;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [id, login, firstName, lastName, email, imageUrl, langKey];
}
