class LocalityComponentType {
  final String _value;

  const LocalityComponentType._internal(this._value);

  toString() => _value;

  static const POSTAL_CODE =
      const LocalityComponentType._internal("postal_code");
  static const LOCALITY = const LocalityComponentType._internal("locality");
  static const POLITICAL = const LocalityComponentType._internal("political");
  static const ADMINISTRATIVE_AREA_LEVEL_2 =
      const LocalityComponentType._internal("administrative_area_level_2");
  static const ADMINISTRATIVE_AREA_LEVEL_1 =
      const LocalityComponentType._internal("administrative_area_level_1");
  static const COUNTRY = const LocalityComponentType._internal("country");

  static LocalityComponentType toType(String type) {
    if (type == 'postal_code') return POSTAL_CODE;
    if (type == 'administrative_area_level_2')
      return ADMINISTRATIVE_AREA_LEVEL_2;
    if (type == 'administrative_area_level_1')
      return ADMINISTRATIVE_AREA_LEVEL_1;
    if (type == 'country') return COUNTRY;
    if (type == 'locality') return LOCALITY;
    if (type == 'political') return POLITICAL;

    // if found nothing
    return COUNTRY;
  }
}
