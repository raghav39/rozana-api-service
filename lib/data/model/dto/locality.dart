import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'locality.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Locality extends Equatable {
  final List<LocalityResults> results;

  Locality({required this.results});

  factory Locality.fromJson(Map<String, dynamic> json) =>
      _$LocalityFromJson(json);

  static const fromJsonFactory = _$LocalityFromJson;

  Map<String, dynamic> toJson() => _$LocalityToJson(this);

  @override
  List<Object> get props => [results];
}

@JsonSerializable(explicitToJson: true, createFactory: true)
class LocalityResults extends Equatable {
  final List<LocalityComponents> address_components;

  LocalityResults({required this.address_components});

  factory LocalityResults.fromJson(Map<String, dynamic> json) =>
      _$LocalityResultsFromJson(json);

  static const fromJsonFactory = _$LocalityResultsFromJson;

  Map<String, dynamic> toJson() => _$LocalityResultsToJson(this);

  @override
  List<Object> get props => [address_components];
}

@JsonSerializable(explicitToJson: true, createFactory: true)
class LocalityComponents extends Equatable {
  final String long_name;
  final String short_name;
  final List<String> types;

  LocalityComponents({required this.long_name, required this.short_name, required this.types});

  factory LocalityComponents.fromJson(Map<String, dynamic> json) =>
      _$LocalityComponentsFromJson(json);

  static const fromJsonFactory = _$LocalityComponentsFromJson;

  Map<String, dynamic> toJson() => _$LocalityComponentsToJson(this);

  @override
  List<Object> get props => [long_name, short_name, types];
}
