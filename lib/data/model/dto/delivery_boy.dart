import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_boy.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class DeliveryBoy extends Equatable {
  int? id;

  var contactNumber;

  var alternateContactNumber;

  bool? trackingEnabled;

  int? userId;

  String? userLogin;

  DeliveryBoy(
      {this.id,
        this.contactNumber,
        this.alternateContactNumber,
        this.trackingEnabled,
        this.userId,
        this.userLogin});

  factory DeliveryBoy.fromJson(Map<String, dynamic> json) =>
      _$DeliveryBoyFromJson(json);

  static const fromJsonFactory = _$DeliveryBoyFromJson;

  Map<String, dynamic> toJson() => _$DeliveryBoyToJson(this);

  @override
  List<Object?> get props => [
    id,
    contactNumber,
    alternateContactNumber,
    trackingEnabled,
    userId,
    userLogin
  ];
}