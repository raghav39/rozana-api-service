import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Tag extends Equatable {
  final int id;

  final String name;

  Tag({required this.id, required this.name});

  factory Tag.fromJson(Map<String, dynamic> json) =>
      _$TagFromJson(json);

  static const fromJsonFactory = _$TagFromJson;

  Map<String, dynamic> toJson() => _$TagToJson(this);

  @override
  List<Object> get props => [id, name];
}
