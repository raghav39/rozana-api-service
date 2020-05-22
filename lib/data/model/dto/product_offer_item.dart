import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';

part 'product_offer_item.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductOfferItem extends Equatable {
  int id;

  double discountValue;

  bool discountValueInPercentage;

  Product product;

  int productOfferId;

  ProductOfferItem(
      {this.id,
      this.discountValue,
      this.discountValueInPercentage,
      this.product,
      this.productOfferId});

  factory ProductOfferItem.fromJson(Map<String, dynamic> json) =>
      _$ProductOfferItemFromJson(json);

  static const fromJsonFactory = _$ProductOfferItemFromJson;

  Map<String, dynamic> toJson() => _$ProductOfferItemToJson(this);

  @override
  List<Object> get props =>
      [id, discountValue, discountValueInPercentage, product, productOfferId];
}
/*

part 'product_offer_item.jser.dart';

class ProductOfferItem extends Equatable {
  int id;

  double discountValue;

  bool discountValueInPercentage;

  Product product;

  int productOfferId;

  ProductOfferItem(
      {this.id,
      this.discountValue,
      this.discountValueInPercentage,
      this.product,
      this.productOfferId});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductOfferItemSerializer();

  static ProductOfferItem fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    discountValue,
    discountValueInPercentage,
    product,
    productOfferId
  ];
}

@GenSerializer()
class ProductOfferItemSerializer extends Serializer<ProductOfferItem>
    with _$ProductOfferItemSerializer {}
*/
