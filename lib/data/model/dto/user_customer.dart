import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/customer.dart';
import 'package:rozana_api_service/data/model/dto/user.dart';
import 'package:rozana_api_service/data/model/dto/wallet.dart';

part 'user_customer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class UserCustomer extends Equatable{
  int id;

  Customer customer;

  Address? address;

  User? user;

  Wallet? wallet;

  UserCustomer({required this.customer, this.address, this.user, this.wallet}): this.id = customer.id!;

  factory UserCustomer.fromJson(Map<String, dynamic> json) => _$UserCustomerFromJson(json);

  static const fromJsonFactory = _$UserCustomerFromJson;

  Map<String, dynamic> toJson() => _$UserCustomerToJson(this);

  @override
  List<Object?> get props => [customer, address, user, wallet];
}
