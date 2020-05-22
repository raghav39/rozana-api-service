import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'organization_config.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class OrganizationConfig extends Equatable {
  final int id;

  final int addressId;

  final String name;

  final String email;

  final String contactNumber;

  final String logoUrl;

  final String gstin;

  final double deliveryCharge;

  final double freeDeliveryThresholdAmount;

  final int orderingDateThreshold;

  OrganizationConfig(
      {this.id,
      this.name,
      this.email,
      this.contactNumber,
      this.addressId,
      this.logoUrl,
      this.gstin,
      this.deliveryCharge,
      this.freeDeliveryThresholdAmount,
      this.orderingDateThreshold});

  factory OrganizationConfig.fromJson(Map<String, dynamic> json) =>
      _$OrganizationConfigFromJson(json);

  static const fromJsonFactory = _$OrganizationConfigFromJson;

  Map<String, dynamic> toJson() => _$OrganizationConfigToJson(this);

  @override
  List<Object> get props => [
        id,
        name,
        email,
        contactNumber,
        addressId,
        logoUrl,
        gstin,
        deliveryCharge,
        freeDeliveryThresholdAmount,
        orderingDateThreshold
      ];
}
/*

part 'organization_config.jser.dart';

class OrganizationConfig extends Equatable {
  final int id;

  final int addressId;

  final String name;

  final String email;

  final String contactNumber;

  final String logoUrl;

  final String gstin;

  final double deliveryCharge;

  final double freeDeliveryThresholdAmount;

  final int orderingDateThreshold;

  OrganizationConfig(
      {this.id,
      this.name,
      this.email,
      this.contactNumber,
      this.addressId,
      this.logoUrl,
      this.gstin,
      this.deliveryCharge,
      this.freeDeliveryThresholdAmount,
      this.orderingDateThreshold});



  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = OrganizationConfigSerializer();

  static OrganizationConfig fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    name,
    email,
    contactNumber,
    addressId,
    logoUrl,
    gstin,
    deliveryCharge,
    freeDeliveryThresholdAmount,
    orderingDateThreshold
  ];
}

@GenSerializer()
class OrganizationConfigSerializer extends Serializer<OrganizationConfig> with _$OrganizationConfigSerializer {
}*/
