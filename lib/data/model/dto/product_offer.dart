import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product_offer_item.dart';

part 'product_offer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductOffer extends Equatable {
  int id;

  String offerImageUrl;

  String description;

  List<ProductOfferItem> productOfferItems;

  int offerId;

  ProductOffer(
      {this.id,
        this.offerImageUrl,
        this.description,
        this.productOfferItems,
        this.offerId});

  factory ProductOffer.fromJson(Map<String, dynamic> json) =>
      _$ProductOfferFromJson(json);

  static const fromJsonFactory = _$ProductOfferFromJson;

  Map<String, dynamic> toJson() => _$ProductOfferToJson(this);

  @override
  List<Object> get props => [id, offerImageUrl, description, productOfferItems, offerId];
}
/*

part 'product_offer.jser.dart';

class ProductOffer extends Equatable {
  int id;

  String offerImageUrl;

  String description;

  List<ProductOfferItem> productOfferItems;

  int offerId;

  ProductOffer(
      {this.id,
      this.offerImageUrl,
      this.description,
      this.productOfferItems,
      this.offerId});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductOfferSerializer();

  static ProductOffer fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, offerImageUrl, description, productOfferItems, offerId];
}

@GenSerializer()
class ProductOfferSerializer extends Serializer<ProductOffer>
    with _$ProductOfferSerializer {}
*/
