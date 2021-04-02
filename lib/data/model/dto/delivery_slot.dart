import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_slot.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class DeliverySlot extends Equatable {
  final int id;

  final String startTime;

  final String endTime;

  DeliverySlot({required this.id, required this.startTime, required this.endTime});

  factory DeliverySlot.fromJson(Map<String, dynamic> json) =>
      _$DeliverySlotFromJson(json);

  static const fromJsonFactory = _$DeliverySlotFromJson;

  Map<String, dynamic> toJson() => _$DeliverySlotToJson(this);

  @override
  List<Object> get props => [id, startTime, endTime];
}
/*
part 'delivery_slot.jser.dart';

class DeliverySlot extends Equatable {
  int id;

  String startTime;

  String endTime;

  DeliverySlot({this.id, this.startTime, this.endTime});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = DeliverySlotSerializer();

  static DeliverySlot fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, startTime, endTime];
}

@GenSerializer()
class DeliverySlotSerializer extends Serializer<DeliverySlot>
    with _$DeliverySlotSerializer {}
*/
