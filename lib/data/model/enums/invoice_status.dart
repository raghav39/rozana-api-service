class InvoiceStatus {
  final String _value;
  const InvoiceStatus._internal(this._value);
  toString() => _value;

  static const DRAFT = const InvoiceStatus._internal('DRAFT');
  static const CREATED = const InvoiceStatus._internal('CREATED');
}