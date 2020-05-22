import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_image.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductImage extends Equatable {
  final int id;

  final String imageUrl;

  final int productId;

  ProductImage({this.id, this.imageUrl, this.productId});

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);

  static const fromJsonFactory = _$ProductImageFromJson;

  Map<String, dynamic> toJson() => _$ProductImageToJson(this);

  @override
  List<Object> get props => [id, imageUrl, productId];
}
/*

part 'product_image.jser.dart';

class ProductImage extends Equatable {
  final int id;

  final String imageUrl;

  final int productId;

  ProductImage({this.id, this.imageUrl, this.productId});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = ProductImageSerializer();

  static ProductImage fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, imageUrl, productId];
}

@GenSerializer()
class ProductImageSerializer extends Serializer<ProductImage>
    with _$ProductImageSerializer {}
*/
