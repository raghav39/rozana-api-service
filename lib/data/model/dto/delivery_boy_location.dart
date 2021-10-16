import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_boy_location.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class DeliveryBoyLocation extends Equatable {
  int? id;

  double latitude;

  double longitude;

  DateTime timestamp;

  int userId; // Id of the delivery boy

  DeliveryBoyLocation({
    this.id,
    this.latitude = 0,
    this.longitude = 0,
    DateTime? timestamp,
    this.userId = -1,
  })  : this.timestamp = timestamp ?? DateTime.now(),
        super();

  factory DeliveryBoyLocation.fromJson(Map<String, dynamic> json) =>
      _$DeliveryBoyLocationFromJson(json);

  static const fromJsonFactory = _$DeliveryBoyLocationFromJson;

  Map<String, dynamic> toJson() => _$DeliveryBoyLocationToJson(this);

  @override
  List<Object?> get props => [
        id,
        latitude,
        longitude,
        timestamp,
        userId,
      ];
}
