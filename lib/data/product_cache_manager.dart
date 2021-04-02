import 'package:rozana_api_service/data/model/dto/product.dart';

class ProductCacheManager {
  List<Product> _products;
  DateTime _lastUpdated;

  /// time in millis to define validity of cache after refresh
  int cacheValidity;

  ProductCacheManager(this.cacheValidity) : _lastUpdated = DateTime.now(), _products=[];

  List<Product>? getProducts() {
    if (_lastUpdated.millisecondsSinceEpoch + cacheValidity <
        DateTime.now().millisecondsSinceEpoch) {
      _products = [];
      return null;
    }
    return _products;
  }

  Product? getProduct(int id, {ignoreCache = false}) {
    if (_products.isEmpty) {
      return null;
    }
    Product? result;
    for (Product product in _products) {
      if (product.id == id) {
        result = product;
        break;
      }
    }
    if (result != null && ignoreCache == true) {
      _products.remove(result);
      return null;
    }
    return result;
  }

  void updateProducts(List<Product> products) {
    _products = products;
    _lastUpdated = DateTime.now();
  }

  void addProduct(Product product) {
    _products.add(product);
    _lastUpdated = DateTime.now();
  }

  void addProducts(List<Product> products) {
    _products.addAll(products);
    _lastUpdated = DateTime.now();
  }
}
