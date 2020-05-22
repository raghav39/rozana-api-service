class OfferType {
  final String _value;

  const OfferType._internal(this._value);

  toString() => _value;

  static const PRODUCT_OFFER = const OfferType._internal('PRODUCT_OFFER');
  static const CATEGORY_OFFER = const OfferType._internal('CATEGORY_OFFER');
}
