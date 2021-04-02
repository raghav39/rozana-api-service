import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_image.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class ProductImage extends Equatable {
  final int id;

  final String imageUrl;

  final int productId;

  ProductImage({required this.id, required this.imageUrl, required this.productId});

  factory ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

  static const fromJsonFactory = _$ProductImageFromJson;

  Map<String, dynamic> toJson() => _$ProductImageToJson(this);

  @override
  List<Object> get props => [id, imageUrl, productId];
}
