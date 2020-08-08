import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';

part 'customer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Customer extends Equatable implements BaseDto {
  @override
  int id;

  String uniqueCode;

  String taxTreatment;

  String taxpayerIdentificationNumber;

  int addressId;

  int userId;

  List<Address> additionalAddresses;

  Customer(
      {this.id,
        this.uniqueCode,
        this.taxTreatment = "CONSUMER",
        this.taxpayerIdentificationNumber,
        this.addressId,
        this.userId,
        this.additionalAddresses});

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  static const fromJsonFactory = _$CustomerFromJson;

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  @override
  List<Object> get props => [
    id,
    uniqueCode,
    taxTreatment,
    taxpayerIdentificationNumber,
    addressId,
    userId,
    additionalAddresses
  ];
}

/*

part 'customer.jser.dart';

class Customer extends Equatable {
  int id;

  String uniqueCode;

  String taxTreatment;

  String taxpayerIdentificationNumber;

  int addressId;

  int userId;

  List<Address> additionalAddresses;

  Customer(
      {this.id,
      this.uniqueCode,
      this.taxTreatment = "CONSUMER",
      this.taxpayerIdentificationNumber,
      this.addressId,
      this.userId,
      this.additionalAddresses});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = CustomerSerializer();

  static Customer fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    uniqueCode,
    taxTreatment,
    taxpayerIdentificationNumber,
    addressId,
    userId,
    additionalAddresses
  ];
}

@GenSerializer()
class CustomerSerializer extends Serializer<Customer>
    with _$CustomerSerializer {}
*/
