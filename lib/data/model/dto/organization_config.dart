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
      this.name = "",
      this.email = "rozana@noisytempo.com",
      this.contactNumber = "",
      this.addressId = -1,
      this.logoUrl = "",
      this.gstin = "",
      this.deliveryCharge = 0,
      this.freeDeliveryThresholdAmount = 0,
      this.orderingDateThreshold = 100,
      this.maxOrderModificationTime = 100,
      this.razorPayKey = "",
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
