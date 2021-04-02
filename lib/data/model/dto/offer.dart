import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Offer extends Equatable {
  final int id;

  final String offerType;

  Offer({required this.id, required this.offerType});

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  static const fromJsonFactory = _$OfferFromJson;

  Map<String, dynamic> toJson() => _$OfferToJson(this);

  @override
  List<Object> get props => [id, offerType];
}