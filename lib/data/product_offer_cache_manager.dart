import 'package:rozana_api_service/data/model/dto/product_offer.dart';

class ProductOfferCacheManager {
  List<ProductOffer> _productOffers;
  DateTime _lastUpdated;

  /// time in millis to define validity of cache after refresh
  int cacheValidity;

  ProductOfferCacheManager(this.cacheValidity) : _lastUpdated = DateTime.now();

  List<ProductOffer> getProductOffers() {
    if (_lastUpdated.millisecondsSinceEpoch + cacheValidity <
        DateTime.now().millisecondsSinceEpoch) {
      _productOffers = null;
    }
    return _productOffers;
  }

  ProductOffer getProductOffer(int id) {
    if (_productOffers == null || _productOffers.isEmpty) {
      return null;
    }
    ProductOffer result;
    for (ProductOffer productOffer in _productOffers) {
      if (productOffer.id == id) {
        result = productOffer;
        break;
      }
    }
    return result;
  }

  void updateProductOffers(List<ProductOffer> productOffers) {
    _productOffers = productOffers;
    _lastUpdated = DateTime.now();
  }

  void addProductOffer(ProductOffer productOffer) {
    if (_productOffers == null) {
      _productOffers = [];
    }
    _productOffers.add(productOffer);
    _lastUpdated = DateTime.now();
  }
}
