import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';

part 'product_offer_item.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductOfferItem extends Equatable {
  final int id;

  final double discountValue;

  final bool discountValueInPercentage;

  final Product product;

  final int productOfferId;

  ProductOfferItem(
      {required this.id,
      required this.discountValue,
      this.discountValueInPercentage = false,
      required this.product,
      required this.productOfferId});

  factory ProductOfferItem.fromJson(Map<String, dynamic> json) => _$ProductOfferItemFromJson(json);

  static const fromJsonFactory = _$ProductOfferItemFromJson;

  Map<String, dynamic> toJson() => _$ProductOfferItemToJson(this);

  @override
  List<Object> get props => [id, discountValue, discountValueInPercentage, product, productOfferId];
}
