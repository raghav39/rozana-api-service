import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';

part 'product_category.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductCategory extends Equatable {
  int id;

  String name;

  String description;

  String imageUrl;

  int sequence;

  String offerRibbon;

  bool uiShowInGrid;

  List<ProductCategory> subCategories;

  List<Product> products;

  ProductCategory(
      {this.id,
        this.name,
        this.description = "",
        this.imageUrl,
        this.sequence = 0,
        this.offerRibbon = "",
        this.uiShowInGrid,
        this.subCategories,
        this.products});

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);

  static const fromJsonFactory = _$ProductCategoryFromJson;

  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);

  @override
  List<Object> get props => [
    id,
    name,
    description,
    imageUrl,
    sequence,
    offerRibbon,
    uiShowInGrid,
    subCategories,
    products
  ];
}
/*

part 'product_category.jser.dart';

class ProductCategory extends Equatable {
  int id;

  String name;

  String description;

  String imageUrl;

  int sequence;

  String offerRibbon;

  List<ProductCategory> subCategories;

  List<Product> products;

  ProductCategory(
      {this.id,
      this.name,
      this.description = "",
      this.imageUrl,
      this.sequence = 0,
      this.offerRibbon = "",
      this.subCategories,
      this.products});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductCategorySerializer();

  static ProductCategory fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    name,
    description,
    imageUrl,
    sequence,
    offerRibbon,
    subCategories,
    products
  ];
}

@GenSerializer()
class ProductCategorySerializer extends Serializer<ProductCategory>
    with _$ProductCategorySerializer {}
*/
