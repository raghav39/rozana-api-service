// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Locality _$LocalityFromJson(Map<String, dynamic> json) => Locality(
      results: (json['results'] as List<dynamic>)
          .map((e) => LocalityResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocalityToJson(Locality instance) => <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

LocalityResults _$LocalityResultsFromJson(Map<String, dynamic> json) =>
    LocalityResults(
      address_components: (json['address_components'] as List<dynamic>)
          .map((e) => LocalityComponents.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocalityResultsToJson(LocalityResults instance) =>
    <String, dynamic>{
      'address_components':
          instance.address_components.map((e) => e.toJson()).toList(),
    };

LocalityComponents _$LocalityComponentsFromJson(Map<String, dynamic> json) =>
    LocalityComponents(
      long_name: json['long_name'] as String,
      short_name: json['short_name'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LocalityComponentsToJson(LocalityComponents instance) =>
    <String, dynamic>{
      'long_name': instance.long_name,
      'short_name': instance.short_name,
      'types': instance.types,
    };
