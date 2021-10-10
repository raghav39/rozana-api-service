import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';

part 'product_category.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductCategory extends Equatable implements BaseDto {
  @override
  int id;

  final String name;

  final String description;

  final String imageUrl;

  final String banner;

  final int sequence;

  final String offerRibbon;

  final bool uiShowInGrid;

  final int? parentCategoryId;

  final List<ProductCategory>? subCategories;

  final List<Product>? products;

  ProductCategory(
      {required this.id,
      required this.name,
      this.description = "",
      this.imageUrl = "",
      this.banner = "",
      this.sequence = 0,
      this.offerRibbon = "",
      this.uiShowInGrid = false,
      this.parentCategoryId,
      this.subCategories,
      this.products});

  factory ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);

  static const fromJsonFactory = _$ProductCategoryFromJson;

  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        imageUrl,
        banner,
        sequence,
        offerRibbon,
        uiShowInGrid,
        parentCategoryId,
        subCategories,
        products
      ];
}
