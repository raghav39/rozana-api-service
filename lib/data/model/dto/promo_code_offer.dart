import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/invoice.dart';

part 'promo_code_offer.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class PromoCodeOffer extends Equatable implements BaseDto {
  @override
  int id;

  final String code;

  final String description;

  final String? terms;

  PromoCodeOffer(
      {required this.id,
      required this.code,
      required this.description,
      this.terms})
      : super();

  factory PromoCodeOffer.fromJson(Map<String, dynamic> json) => _$PromoCodeOfferFromJson(json);

  Map<String, dynamic> toJson() => _$PromoCodeOfferToJson(this);

  static const fromJsonFactory = _$PromoCodeOfferFromJson;

  @override
  List<Object?> get props => [id, code, description, terms];
}
