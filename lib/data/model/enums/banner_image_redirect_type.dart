class BannerImageRedirectType {
  final String _value;

  const BannerImageRedirectType._internal(this._value);

  toString() => _value;

  static const PRODUCT_PAGE =
      const BannerImageRedirectType._internal('PRODUCT_PAGE');
  static const PRODUCT_QUERY =
      const BannerImageRedirectType._internal('PRODUCT_QUERY');
  static const NOT_DEFINED =
      const BannerImageRedirectType._internal('');
}
