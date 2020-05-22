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
      {this.id,
      this.maxOrderModificationTime,
      this.rozanaAppKey,
      this.organizationName,
      this.customerAppPackageName,
      this.stockManagementEnabled});

  factory OutletCustomConfiguration.fromJson(Map<String, dynamic> json) =>
      _$OutletCustomConfigurationFromJson(json);

  static const fromJsonFactory = _$OutletCustomConfigurationFromJson;

  Map<String, dynamic> toJson() => _$OutletCustomConfigurationToJson(this);

  @override
  List<Object> get props => [
        id,
        maxOrderModificationTime,
        rozanaAppKey,
        organizationName,
        customerAppPackageName,
        stockManagementEnabled
      ];
}
/*

part 'outlet_custom_configuration.jser.dart';

class OutletCustomConfiguration extends Equatable {
  int id;

  int maxOrderModificationTime;

  String rozanaAppKey;

  String organizationName;

  String customerAppPackageName;

  bool stockManagementEnabled;

  OutletCustomConfiguration(
      {this.id,
      this.maxOrderModificationTime,
      this.rozanaAppKey,
      this.organizationName,
      this.customerAppPackageName,
      this.stockManagementEnabled});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = OutletCustomConfigurationSerializer();

  static OutletCustomConfiguration fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    maxOrderModificationTime,
    rozanaAppKey,
    organizationName,
    customerAppPackageName,
    stockManagementEnabled
  ];
}

@GenSerializer()
class OutletCustomConfigurationSerializer
    extends Serializer<OutletCustomConfiguration>
    with _$OutletCustomConfigurationSerializer {}
*/
