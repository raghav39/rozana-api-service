import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tax_rate.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class TaxRate extends Equatable {
  int id;

  var rate;

  String name;

  String type;

  TaxRate({this.id, this.rate, this.name, this.type});

  factory TaxRate.fromJson(Map<String, dynamic> json) =>
      _$TaxRateFromJson(json);

  static const fromJsonFactory = _$TaxRateFromJson;

  Map<String, dynamic> toJson() => _$TaxRateToJson(this);

  @override
  List<Object> get props => [id, rate, name, type];
}

/*

part 'tax_rate.jser.dart';

class TaxRate extends Equatable {
  int id;

  var rate;

  String name;

  String type;

  TaxRate({this.id, this.rate, this.name, this.type});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = TaxRateSerializer();

  static TaxRate fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, rate, name, type];
}

@GenSerializer()
class TaxRateSerializer extends Serializer<TaxRate> with _$TaxRateSerializer {}
*/
