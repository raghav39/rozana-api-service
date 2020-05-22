import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_stock.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductStock extends Equatable {
  int id;

  double quantity;

  int productId;

  ProductStock({this.id, this.quantity, this.productId});

  factory ProductStock.fromJson(Map<String, dynamic> json) =>
      _$ProductStockFromJson(json);

  static const fromJsonFactory = _$ProductStockFromJson;

  Map<String, dynamic> toJson() => _$ProductStockToJson(this);

  @override
  List<Object> get props => [id, quantity, productId];
}
/*

part 'product_stock.jser.dart';

class ProductStock extends Equatable {
  int id;

  double quantity;

  int productId;

  ProductStock({this.id, this.quantity, this.productId});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductStockSerializer();

  static ProductStock fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, quantity, productId];
}

@GenSerializer()
class ProductStockSerializer extends Serializer<ProductStock>
    with _$ProductStockSerializer {}
*/
