// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return ProductCategory(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    banner: json['banner'] as String,
    sequence: json['sequence'] as int,
    offerRibbon: json['offerRibbon'] as String,
    uiShowInGrid: json['uiShowInGrid'] as bool,
    parentCategoryId: json['parentCategoryId'] as int,
    subCategories: (json['subCategories'] as List)
        ?.map((e) => e == null
            ? null
            : ProductCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    products: (json['products'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

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
      'subCategories':
          instance.subCategories?.map((e) => e?.toJson())?.toList(),
      'products': instance.products?.map((e) => e?.toJson())?.toList(),
    };
