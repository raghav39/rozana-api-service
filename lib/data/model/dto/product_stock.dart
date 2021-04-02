import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_stock.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductStock extends Equatable {
  final int id;

  final double quantity;

  final int productId;

  ProductStock({required this.id, required this.quantity, required this.productId});

  factory ProductStock.fromJson(Map<String, dynamic> json) =>
      _$ProductStockFromJson(json);

  static const fromJsonFactory = _$ProductStockFromJson;

  Map<String, dynamic> toJson() => _$ProductStockToJson(this);

  @override
  List<Object> get props => [id, quantity, productId];
}
