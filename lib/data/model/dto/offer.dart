import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Offer extends Equatable {
  int id;

  String offerType;

  Offer({this.id, this.offerType});

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  static const fromJsonFactory = _$OfferFromJson;

  Map<String, dynamic> toJson() => _$OfferToJson(this);

  @override
  List<Object> get props => [id, offerType];
}
/*

part 'offer.jser.dart';

class Offer extends Equatable {
  int id;

  String offerType;

  Offer({this.id, this.offerType});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = OfferSerializer();

  static Offer fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, offerType];
}

@GenSerializer()
class OfferSerializer extends Serializer<Offer> with _$OfferSerializer {}
*/
