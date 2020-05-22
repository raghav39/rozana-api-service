/*
enum OrderStatus {
  ORDER_PLACED,
  OUT_FOR_DELIVERY,
  DELIVERED,
  RETURNED,
  CANCELLED
}
*/
class OrderStatus {
  final String _value;

  const OrderStatus._internal(this._value);

  toString() => _value;

  static const ORDER_PLACED = const OrderStatus._internal('ORDER_PLACED');
  static const ORDER_CONFIRMED = const OrderStatus._internal('ORDER_CONFIRMED');
  static const OUT_FOR_DELIVERY =
      const OrderStatus._internal('OUT_FOR_DELIVERY');
  static const DELIVERED = const OrderStatus._internal('DELIVERED');
  static const RETURNED = const OrderStatus._internal('RETURNED');
  static const CANCELLED = const OrderStatus._internal('CANCELLED');
}
