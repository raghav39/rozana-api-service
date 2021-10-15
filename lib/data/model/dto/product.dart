import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/product_category.dart';
import 'package:rozana_api_service/data/model/dto/product_stock.dart';
import 'package:rozana_api_service/data/model/dto/tag.dart';

part 'product.g.dart';

const List<Tag> emptyTagList = [];
const List<Product> emptyVariantsList = [];
const List<ProductCategory> emptyProductCategoriesList = [];

@JsonSerializable(explicitToJson: true, createFactory: true)
class Product extends Equatable implements BaseDto {
  @override
  int id = -1;

  String name;

  String? description;

  double price;

  double? discountedPrice;

  bool discontinue;

  String? category;

  String? taxationCode;

  String? unit;

  String? extId;

  String? brandName;

  bool priceInclusiveTax;

  bool outOfStock;

  bool featured;

  String? alias;

  int organizationId;

  int? imageId;

  String? imageUrl;

  int taxStrategyId;

  String taxStrategyType;

  List<ProductStock>? productStocks;

  List<ProductCategory> productCategories;

  List<Product> variants;

  List<Tag> tags;

  Product(
      {required this.id,
      required this.name,
      organizationId,
      taxStrategyId,
      price,
      this.taxStrategyType = 'GST0',
      this.discontinue = false,
      this.priceInclusiveTax = false,
      this.outOfStock = false,
      this.featured = false,
      this.description,
      this.discountedPrice,
      this.category,
      this.taxationCode,
      this.unit,
      this.extId,
      this.brandName,
      this.alias,
      this.imageId,
      this.imageUrl,
      this.productStocks,
      this.productCategories = emptyProductCategoriesList,
      this.variants = emptyVariantsList,
      this.tags = emptyTagList})
      :
        this.organizationId = int.tryParse(organizationId) ?? -1,
        this.taxStrategyId = int.tryParse(taxStrategyId) ?? -1,
        this.price = double.tryParse(price) ?? 0,
        super();

  double getTaxPercentage() {
    switch (taxStrategyType) {
      case 'GST0':
        return 0.0;
      case 'GST5':
        return 5.0;
      case 'GST12':
        return 12.0;
      case 'GST18':
        return 18.0;
      case 'GST28':
        return 28.0;
      default:
        return 0.0;
    }
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  static const fromJsonFactory = _$ProductFromJson;

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        discountedPrice,
        discontinue,
        category,
        taxationCode,
        unit,
        extId,
        brandName,
        priceInclusiveTax,
        outOfStock,
        featured,
        alias,
        organizationId,
        imageId,
        imageUrl,
        taxStrategyId,
        taxStrategyType,
        productStocks,
        productCategories,
        variants,
        tags
      ];
}
