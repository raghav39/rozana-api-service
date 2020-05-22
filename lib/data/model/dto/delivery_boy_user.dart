import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy.dart';
import 'package:rozana_api_service/data/model/dto/user.dart';

part 'delivery_boy_user.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class DeliveryBoyUser extends Equatable {
  DeliveryBoy deliveryBoy;

  User user;

  DeliveryBoyUser({this.deliveryBoy, this.user});


  factory DeliveryBoyUser.fromJson(Map<String, dynamic> json) =>
      _$DeliveryBoyUserFromJson(json);

  static const fromJsonFactory = _$DeliveryBoyUserFromJson;

  Map<String, dynamic> toJson() => _$DeliveryBoyUserToJson(this);

  @override
  List<Object> get props => [deliveryBoy, user];
}
/*

part 'delivery_boy_user.jser.dart';

class DeliveryBoyUser extends Equatable {
  DeliveryBoy deliveryBoy;

  User user;

  DeliveryBoyUser({this.deliveryBoy, this.user});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = DeliveryBoyUserSerializer();

  static DeliveryBoyUser fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [deliveryBoy, user];
}

@GenSerializer()
class DeliveryBoyUserSerializer extends Serializer<DeliveryBoyUser>
    with _$DeliveryBoyUserSerializer {}
*/
