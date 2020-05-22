import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'jwt_token.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class JWTToken extends Equatable {
  String id_token;

  JWTToken({this.id_token});

  factory JWTToken.fromJson(Map<String, dynamic> json) =>
      _$JWTTokenFromJson(json);

  static const fromJsonFactory = _$JWTTokenFromJson;

  Map<String, dynamic> toJson() => _$JWTTokenToJson(this);

  @override
  List<Object> get props => [id_token];
}

/*

part 'jwt_token.jser.dart';

class JWTToken extends Equatable {
  String id_token;

  JWTToken({this.id_token});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = JWTTokenSerializer();

  static JWTToken fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id_token];
}

@GenSerializer()
class JWTTokenSerializer extends Serializer<JWTToken>
    with _$JWTTokenSerializer {}
*/
