import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'selected_product.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class SelectedProduct extends Equatable {
  int? id;

  String? frequency;

  int? quantity;

  bool? discontinue;

  int? productId;

  String? productName;

  int? deliverySlotId;

  String? deliverySlotStartTime;

  String? deliverySlotEndTime;

  int? deliveryBoyUserId;

  String? deliveryBoyName;

  SelectedProduct(
      {this.id,
      this.frequency,
      this.quantity,
      this.discontinue,
      this.productId,
      this.productName,
      this.deliverySlotId,
      this.deliverySlotStartTime,
      this.deliverySlotEndTime,
      this.deliveryBoyUserId,
      this.deliveryBoyName});

  factory SelectedProduct.fromJson(Map<String, dynamic> json) => _$SelectedProductFromJson(json);

  static const fromJsonFactory = _$SelectedProductFromJson;

  Map<String, dynamic> toJson() => _$SelectedProductToJson(this);

  @override
  List<Object?> get props => [
        id,
        frequency,
        quantity,
        discontinue,
        productId,
        productName,
        deliverySlotId,
        deliverySlotStartTime,
        deliverySlotEndTime,
        deliveryBoyUserId,
        deliveryBoyName
      ];
}
