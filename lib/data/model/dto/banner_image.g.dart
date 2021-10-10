// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerImage _$BannerImageFromJson(Map<String, dynamic> json) => BannerImage(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String?,
      disabled: json['disabled'] as bool?,
      productId: json['productId'] as int?,
      searchQuery: json['searchQuery'] as String?,
      redirectTo: json['redirectTo'] as String?,
    );

Map<String, dynamic> _$BannerImageToJson(BannerImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'disabled': instance.disabled,
      'productId': instance.productId,
      'searchQuery': instance.searchQuery,
      'redirectTo': instance.redirectTo,
    };
