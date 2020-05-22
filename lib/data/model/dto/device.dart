import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'device.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Device extends Equatable {
  String uuid;

  //Name of the device
  String name;

  String token;

  int userId;

  Device({@required this.uuid, this.name, this.token, this.userId});

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  static const fromJsonFactory = _$DeviceFromJson;

  Map<String, dynamic> toJson() => _$DeviceToJson(this);

  @override
  List<Object> get props => [uuid, name, token, userId];
}

/*

part 'device.jser.dart';

class Device extends Equatable {
  String uuid;

  //Name of the device
  String name;

  String token;

  int userId;

  Device({@required this.uuid, this.name, this.token, this.userId});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = DeviceSerializer();

  static Device fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [uuid, name, token, userId];
}

@GenSerializer()
class DeviceSerializer extends Serializer<Device> with _$DeviceSerializer {}
*/
