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

  final int maxOrderModificationTime;

  final String razorPayKey;

  final bool acceptOrders;

  OrganizationConfig(
      {required this.id,
      required this.name,
      required this.email,
      required this.contactNumber,
      required this.addressId,
      required this.logoUrl,
      required this.gstin,
      required this.deliveryCharge,
      required this.freeDeliveryThresholdAmount,
      required this.orderingDateThreshold,
      required this.maxOrderModificationTime,
      required this.razorPayKey,
      this.acceptOrders = true});

  factory OrganizationConfig.fromJson(Map<String, dynamic> json) => _$OrganizationConfigFromJson(json);

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
        orderingDateThreshold,
        maxOrderModificationTime,
        razorPayKey,
        acceptOrders
      ];
}
