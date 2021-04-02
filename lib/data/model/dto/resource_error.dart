import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_error.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ResourceError extends Equatable {
  final String type;
  final String message;

  ResourceError({required this.type, required this.message});

  factory ResourceError.fromJson(Map<String, dynamic> json) => _$ResourceErrorFromJson(json);

  static const fromJsonFactory = _$ResourceErrorFromJson;

  Map<String, dynamic> toJson() => _$ResourceErrorToJson(this);

  @override
  List<Object> get props => [type, message];
}
