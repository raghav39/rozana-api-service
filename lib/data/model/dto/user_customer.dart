import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/customer.dart';
import 'package:rozana_api_service/data/model/dto/user.dart';
import 'package:rozana_api_service/data/model/dto/wallet.dart';

part 'user_customer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class UserCustomer extends Equatable {
  Customer customer;

  Address address;

  User user;

  Wallet wallet;

  UserCustomer({this.customer, this.address, this.user, this.wallet});

  factory UserCustomer.fromJson(Map<String, dynamic> json) =>
      _$UserCustomerFromJson(json);

  static const fromJsonFactory = _$UserCustomerFromJson;

  Map<String, dynamic> toJson() => _$UserCustomerToJson(this);

  @override
  List<Object> get props => [customer, address, user, wallet];
}
/*

part 'user_customer.jser.dart';

class UserCustomer extends Equatable {
  Customer customer;
  Address address;
  User user;
  Wallet wallet;

  UserCustomer({this.customer, this.address, this.user, this.wallet});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = UserCustomerSerializer();

  static UserCustomer fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [customer, address, user, wallet];
}

@GenSerializer()
class UserCustomerSerializer extends Serializer<UserCustomer>
    with _$UserCustomerSerializer {}
*/
