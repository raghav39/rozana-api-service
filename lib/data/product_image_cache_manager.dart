import 'dart:collection';

import 'package:rozana_api_service/data/model/dto/product_image.dart';

class ProductImageCacheManager {
  Map<int, List<ProductImage>> _productImages;
  DateTime _lastUpdated;

  /// time in millis to define validity of cache after refresh
  int cacheValidity;

  ProductImageCacheManager(this.cacheValidity)
      : _lastUpdated = DateTime.now(),
        _productImages = HashMap();

  List<ProductImage> getProductImages(int productId) {
    if (_lastUpdated.millisecondsSinceEpoch + cacheValidity <
        DateTime.now().millisecondsSinceEpoch) {
      _productImages = null;
    }
    return _productImages[productId];
  }

  void updateProductImages(int productId, List<ProductImage> productImages) {
    _productImages[productId] = productImages;
    _lastUpdated = DateTime.now();
  }

  void addProductImage(int productId, ProductImage productImage) {
    List<ProductImage> productImages = _productImages[productId];
    if (productImages == null || productImages.isEmpty) {
      productImages = [productImage];
      _productImages[productId] = productImages;
      return;
    }
    for (ProductImage productImage1 in productImages) {
      // if the image already exists in the list then ignore
      if (productImage1.imageUrl == productImage.imageUrl &&
          productImage1.id == productImage.id) {
        return;
      }
      // if the product imageUrl is updated for a specific productImage then remove the product image from the list and later add the updated one
      if (productImage1.imageUrl != productImage.imageUrl &&
          productImage1.id == productImage.id) {
        productImages.remove(productImage1);
      }
    }
    productImages.add(productImage);
    _lastUpdated = DateTime.now();
  }

  void removeAllProductImages(int productId) {
    _productImages[productId] = null;
    _lastUpdated = DateTime.now();
  }
}
