// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      organizationId: json['organizationId'],
      taxStrategyId: json['taxStrategyId'],
      price: json['price'],
      taxStrategyType: json['taxStrategyType'] as String? ?? 'GST0',
      discontinue: json['discontinue'] as bool? ?? false,
      priceInclusiveTax: json['priceInclusiveTax'] as bool? ?? false,
      outOfStock: json['outOfStock'] as bool? ?? false,
      featured: json['featured'] as bool? ?? false,
      description: json['description'] as String?,
      discountedPrice: (json['discountedPrice'] as num?)?.toDouble(),
      category: json['category'] as String?,
      taxationCode: json['taxationCode'] as String?,
      unit: json['unit'] as String?,
      extId: json['extId'] as String?,
      brandName: json['brandName'] as String?,
      alias: json['alias'] as String?,
      imageId: json['imageId'] as int?,
      imageUrl: json['imageUrl'] as String?,
      productStocks: (json['productStocks'] as List<dynamic>?)
          ?.map((e) => ProductStock.fromJson(e as Map<String, dynamic>))
          .toList(),
      productCategories: (json['productCategories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptyProductCategoriesList,
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptyVariantsList,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptyTagList,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'discontinue': instance.discontinue,
      'category': instance.category,
      'taxationCode': instance.taxationCode,
      'unit': instance.unit,
      'extId': instance.extId,
      'brandName': instance.brandName,
      'priceInclusiveTax': instance.priceInclusiveTax,
      'outOfStock': instance.outOfStock,
      'featured': instance.featured,
      'alias': instance.alias,
      'organizationId': instance.organizationId,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'taxStrategyId': instance.taxStrategyId,
      'taxStrategyType': instance.taxStrategyType,
      'productStocks': instance.productStocks?.map((e) => e.toJson()).toList(),
      'productCategories':
          instance.productCategories.map((e) => e.toJson()).toList(),
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
    };
