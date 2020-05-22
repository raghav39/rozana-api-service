import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Address extends Equatable {
  int id;

  String contactNumber;

  String address1;

  String address2;

  String landmark;

  String city;

  String zipCode;

  String state;

  String country;

  String alternatePhone;

  double locationLat;

  double locationLong;
  Address(
      {this.id,
        this.contactNumber,
        this.address1,
        this.address2,
        this.landmark,
        this.city,
        this.zipCode,
        this.state,
        this.country,
        this.alternatePhone,
        this.locationLat,
        this.locationLong});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  static const fromJsonFactory = _$AddressFromJson;

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  List<Object> get props => [
    id,
    contactNumber,
    address1,
    address2,
    landmark,
    city,
    zipCode,
    state,
    country,
    alternatePhone,
    locationLat,
    locationLong
  ];
}

/*

part 'address.jser.dart';

class Address extends Equatable {
  int id;

  String contactNumber;

  String address1;

  String address2;

  String landmark;

  String city;

  String zipCode;

  String state;

  String country;

  String alternatePhone;

  double locationLat;

  double locationLong;

  Address(
      {this.id,
      this.contactNumber,
      this.address1,
      this.address2,
      this.landmark,
      this.city,
      this.zipCode,
      this.state,
      this.country,
      this.alternatePhone,
      this.locationLat,
      this.locationLong});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = AddressSerializer();

  static Address fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    contactNumber,
    address1,
    address2,
    landmark,
    city,
    zipCode,
    state,
    country,
    alternatePhone,
    locationLat,
    locationLong
  ];
}

@GenSerializer()
class AddressSerializer extends Serializer<Address> with _$AddressSerializer {}
*/
