import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'locality.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Locality extends Equatable {
  final List<LocalityResults> results;

  Locality({this.results});

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

  LocalityResults({this.address_components});

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

  LocalityComponents({this.long_name, this.short_name, this.types});

  factory LocalityComponents.fromJson(Map<String, dynamic> json) =>
      _$LocalityComponentsFromJson(json);

  static const fromJsonFactory = _$LocalityComponentsFromJson;

  Map<String, dynamic> toJson() => _$LocalityComponentsToJson(this);

  @override
  List<Object> get props => [long_name, short_name, types];
}
/*


part 'locality.jser.dart';

class Locality extends Equatable {
  final List<LocalityResults> results;

  Locality({this.results});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = LocalitySerializer();

  static Locality fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [results];
}

@GenSerializer()
class LocalitySerializer extends Serializer<Locality>
    with _$LocalitySerializer {}

class LocalityResults extends Equatable {
  final List<LocalityComponents> address_components;

  LocalityResults({this.address_components});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = LocalityResultsSerializer();

  static LocalityResults fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [address_components];
}

@GenSerializer()
class LocalityResultsSerializer extends Serializer<LocalityResults>
    with _$LocalityResultsSerializer {}

class LocalityComponents extends Equatable {
  final String long_name;
  final String short_name;
  final List<String> types;

  LocalityComponents({this.long_name, this.short_name, this.types});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = LocalityComponentsSerializer();

  static LocalityComponents fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [long_name, short_name, types];
}

@GenSerializer()
class LocalityComponentsSerializer extends Serializer<LocalityComponents>
    with _$LocalityComponentsSerializer {}
*/
