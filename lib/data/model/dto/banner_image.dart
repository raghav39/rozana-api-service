import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/enums/banner_image_redirect_type.dart';

part 'banner_image.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class BannerImage extends Equatable implements BaseDto {
  @override
  int id;

  final String? imageUrl;

  final bool? disabled;

  final int? productId;

  final String? searchQuery;

  final String? redirectTo;

  BannerImage({required this.id, this.imageUrl, this.disabled, this.productId, this.searchQuery, this.redirectTo});

  factory BannerImage.fromJson(Map<String, dynamic> json) => _$BannerImageFromJson(json);

  static const fromJsonFactory = _$BannerImageFromJson;

  Map<String, dynamic> toJson() => _$BannerImageToJson(this);

  BannerImageRedirectType redirectType() {
    switch (redirectTo) {
      case 'PRODUCT_PAGE':
        return BannerImageRedirectType.PRODUCT_PAGE;
      case 'PRODUCT_QUERY':
        return BannerImageRedirectType.PRODUCT_QUERY;
      default:
        return BannerImageRedirectType.NOT_DEFINED;
    }
  }

  @override
  List<Object?> get props => [id, imageUrl, disabled, productId, searchQuery, redirectTo];
}
