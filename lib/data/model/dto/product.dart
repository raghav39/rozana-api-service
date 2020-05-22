import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product_stock.dart';

part 'product.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Product extends Equatable {
  int id;

  String name;

  String description;

  double price;

  double discountedPrice;

  bool discontinue;

  String category;

  String taxationCode;

  String unit;

  String extId;

  String brandName;

  bool priceInclusiveTax;

  bool outOfStock;

  String alias;

  int organizationId;

  int imageId;

  String imageUrl;

  int taxStrategyId;

  String taxStrategyType;

  List<ProductStock> productStocks;

  List<Product> variants;

  Product(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.discountedPrice,
        this.discontinue,
        this.category,
        this.taxationCode,
        this.unit,
        this.extId,
        this.brandName,
        this.priceInclusiveTax,
        this.outOfStock = false,
        this.alias,
        this.organizationId,
        this.imageId,
        this.imageUrl,
        this.taxStrategyId,
        this.taxStrategyType,
        this.productStocks,
        this.variants})
      : super();

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
  List<Object> get props => [
    id,
    name,
    description,
    price,
    imageUrl,
    discountedPrice,
    discontinue,
    taxStrategyId,
    taxStrategyType,
    brandName,
    priceInclusiveTax,
    category,
    taxationCode,
    unit,
    outOfStock,
    productStocks,
    extId,
    imageId,
    organizationId,
    alias,
    variants
  ];
}
/*

part 'product.jser.dart';

class Product extends Equatable {
  int id;

  String name;

  String description;

  double price;

  double discountedPrice;

  bool discontinue;

  String category;

  String taxationCode;

  String unit;

  String extId;

  String brandName;

  bool priceInclusiveTax;

  bool outOfStock;

  String alias;

  int organizationId;

  int imageId;

  String imageUrl;

  int taxStrategyId;

  String taxStrategyType;

  List<ProductStock> productStocks;

  Product(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.discountedPrice,
      this.discontinue,
      this.category,
      this.taxationCode,
      this.unit,
      this.extId,
      this.brandName,
      this.priceInclusiveTax,
      this.outOfStock = false,
      this.alias,
      this.organizationId,
      this.imageId,
      this.imageUrl,
      this.taxStrategyId,
      this.taxStrategyType,
      this.productStocks})
      : super();

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

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductSerializer();

  static Product fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    name,
    description,
    price,
    imageUrl,
    discountedPrice,
    discontinue,
    taxStrategyId,
    taxStrategyType,
    brandName,
    priceInclusiveTax,
    category,
    taxationCode,
    unit,
    outOfStock,
    productStocks,
    extId,
    imageId,
    organizationId,
    alias
  ];
}

@GenSerializer()
class ProductSerializer extends Serializer<Product> with _$ProductSerializer {}
*/
