import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product_offer_item.dart';

part 'product_offer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductOffer extends Equatable {
  final int id;

  final String offerImageUrl;

  final String description;

  final List<ProductOfferItem> productOfferItems;

  final int offerId;

  ProductOffer(
      {required this.id,
        required this.offerImageUrl,
        required this.description,
        required this.productOfferItems,
        required this.offerId});

  factory ProductOffer.fromJson(Map<String, dynamic> json) =>
      _$ProductOfferFromJson(json);

  static const fromJsonFactory = _$ProductOfferFromJson;

  Map<String, dynamic> toJson() => _$ProductOfferToJson(this);

  @override
  List<Object> get props => [id, offerImageUrl, description, productOfferItems, offerId];
}
