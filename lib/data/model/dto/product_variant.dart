import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';

part 'product_variant.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductVariant extends Equatable {
  int id;

  String name;

  List<Product> products;

  ProductVariant({this.id, this.name, this.products});

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  static const fromJsonFactory = _$ProductVariantFromJson;

  Map<String, dynamic> toJson() => _$ProductVariantToJson(this);

  @override
  List<Object> get props => [id, name, products];
}

/*

part 'product_variant.jser.dart';

class ProductVariant extends Equatable {
  int id;

  String name;

  List<Product> products;

  ProductVariant({this.id, this.name, this.products});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductVariantSerializer();

  static ProductVariant fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, name, products];
}

@GenSerializer()
class ProductVariantSerializer extends Serializer<ProductVariant>
    with _$ProductVariantSerializer {}
*/
