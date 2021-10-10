// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) =>
    ProductCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      banner: json['banner'] as String? ?? "",
      sequence: json['sequence'] as int? ?? 0,
      offerRibbon: json['offerRibbon'] as String? ?? "",
      uiShowInGrid: json['uiShowInGrid'] as bool? ?? false,
      parentCategoryId: json['parentCategoryId'] as int?,
      subCategories: (json['subCategories'] as List<dynamic>?)
          ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCategoryToJson(ProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'banner': instance.banner,
      'sequence': instance.sequence,
      'offerRibbon': instance.offerRibbon,
      'uiShowInGrid': instance.uiShowInGrid,
      'parentCategoryId': instance.parentCategoryId,
      'subCategories': instance.subCategories?.map((e) => e.toJson()).toList(),
      'products': instance.products?.map((e) => e.toJson()).toList(),
    };
