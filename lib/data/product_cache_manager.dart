import 'package:rozana_api_service/data/model/dto/product.dart';

class ProductCacheManager {
  List<Product> _products;
  DateTime _lastUpdated;

  /// time in millis to define validity of cache after refresh
  int cacheValidity;

  ProductCacheManager(this.cacheValidity) : _lastUpdated = DateTime.now();

  List<Product> getProducts() {
    if (_lastUpdated.millisecondsSinceEpoch + cacheValidity <
        DateTime.now().millisecondsSinceEpoch) {
      _products = null;
    }
    return _products;
  }

  Product getProduct(int id) {
    if (_products == null || _products.isEmpty) {
      return null;
    }
    Product result;
    for (Product product in _products) {
      if (product.id == id) {
        result = product;
        break;
      }
    }
    return result;
  }

  void updateProducts(List<Product> products) {
    _products = products;
    _lastUpdated = DateTime.now();
  }

  void addProduct(Product product) {
    if (_products == null) {
      _products = [];
    }
    _products.add(product);
    _lastUpdated = DateTime.now();
  }

  void addProducts(List<Product> products) {
    if (_products == null) {
      _products = [];
    }
    _products.addAll(products);
    _lastUpdated = DateTime.now();
  }
}
