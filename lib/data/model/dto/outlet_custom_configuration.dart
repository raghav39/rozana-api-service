import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'outlet_custom_configuration.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class OutletCustomConfiguration extends Equatable {
  int id;

  int maxOrderModificationTime;

  String rozanaAppKey;

  String organizationName;

  String customerAppPackageName;

  bool stockManagementEnabled;

  OutletCustomConfiguration(
      {required this.id,
      required this.maxOrderModificationTime,
      required this.rozanaAppKey,
      required this.organizationName,
      required this.customerAppPackageName,
      required this.stockManagementEnabled});

  factory OutletCustomConfiguration.fromJson(Map<String, dynamic> json) => _$OutletCustomConfigurationFromJson(json);

  static const fromJsonFactory = _$OutletCustomConfigurationFromJson;

  Map<String, dynamic> toJson() => _$OutletCustomConfigurationToJson(this);

  @override
  List<Object> get props =>
      [id, maxOrderModificationTime, rozanaAppKey, organizationName, customerAppPackageName, stockManagementEnabled];
}