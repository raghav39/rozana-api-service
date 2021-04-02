class DeliveryMode {
  final String _value;

  const DeliveryMode._internal(this._value);

  toString() => _value;

  static const DELIVERY = const DeliveryMode._internal('DELIVERY');
  static const SELF_PICK_UP = const DeliveryMode._internal('SELF_PICK_UP');
}
