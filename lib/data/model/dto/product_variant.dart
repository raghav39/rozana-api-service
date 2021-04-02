import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';

part 'product_variant.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductVariant extends Equatable {
  int id;

  String name;

  List<Product> products;

  ProductVariant({required this.id, required this.name, required this.products});

  factory ProductVariant.fromJson(Map<String, dynamic> json) => _$ProductVariantFromJson(json);

  static const fromJsonFactory = _$ProductVariantFromJson;

  Map<String, dynamic> toJson() => _$ProductVariantToJson(this);

  @override
  List<Object> get props => [id, name, products];
}
