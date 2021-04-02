import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'jwt_token.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class JWTToken extends Equatable {
  final String id_token;

  JWTToken({required this.id_token});

  factory JWTToken.fromJson(Map<String, dynamic> json) =>
      _$JWTTokenFromJson(json);

  static const fromJsonFactory = _$JWTTokenFromJson;

  Map<String, dynamic> toJson() => _$JWTTokenToJson(this);

  @override
  List<Object> get props => [id_token];
}
