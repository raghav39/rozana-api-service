import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy.dart';
import 'package:rozana_api_service/data/model/dto/user.dart';

part 'delivery_boy_user.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class DeliveryBoyUser extends Equatable {
  final DeliveryBoy deliveryBoy;

  final User user;

  DeliveryBoyUser({required this.deliveryBoy, required this.user});


  factory DeliveryBoyUser.fromJson(Map<String, dynamic> json) =>
      _$DeliveryBoyUserFromJson(json);

  static const fromJsonFactory = _$DeliveryBoyUserFromJson;

  Map<String, dynamic> toJson() => _$DeliveryBoyUserToJson(this);

  @override
  List<Object> get props => [deliveryBoy, user];
}