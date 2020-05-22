// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxRate _$TaxRateFromJson(Map<String, dynamic> json) {
  return TaxRate(
    id: json['id'] as int,
    rate: json['rate'],
    name: json['name'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$TaxRateToJson(TaxRate instance) => <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'name': instance.name,
      'type': instance.type,
    };
