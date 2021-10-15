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
