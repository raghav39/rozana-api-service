import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tax_rate.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class TaxRate extends Equatable {
  final int id;

  var rate;

  final String name;

  final String type;

  TaxRate({required this.id, this.rate, required this.name, required this.type});

  factory TaxRate.fromJson(Map<String, dynamic> json) =>
      _$TaxRateFromJson(json);

  static const fromJsonFactory = _$TaxRateFromJson;

  Map<String, dynamic> toJson() => _$TaxRateToJson(this);

  @override
  List<Object> get props => [id, rate, name, type];
}