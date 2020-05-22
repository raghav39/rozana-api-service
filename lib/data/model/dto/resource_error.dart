import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_error.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ResourceError extends Equatable {
  final String type;
  final String message;

  ResourceError({this.type, this.message});

  factory ResourceError.fromJson(Map<String, dynamic> json) =>
      _$ResourceErrorFromJson(json);

  static const fromJsonFactory = _$ResourceErrorFromJson;

  Map<String, dynamic> toJson() => _$ResourceErrorToJson(this);

  @override
  List<Object> get props => [type, message];
}

/*

part 'resource_error.jser.dart';

class ResourceError extends Equatable {
  final String type;
  final String message;

  ResourceError({this.type, this.message});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ResourceErrorSerializer();

  static ResourceError fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [type, message];
}

@GenSerializer()
class ResourceErrorSerializer extends Serializer<ResourceError>
    with _$ResourceErrorSerializer {}
*/
