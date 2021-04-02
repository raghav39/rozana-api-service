import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';
import 'package:rozana_api_service/data/model/dto/tax_rate.dart';

part 'line_item.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class LineItem extends Equatable {
  int? id;

  var itemPrice;

  var quantity;

  String? status;

  DateTime? deliveredAt;

  DateTime? scheduledDeliveryTime;

  var deliveryLocationLat;

  var deliveryLocationLong;

  int? deliveredById;

  String? deliveredByName;

  int? selectedProductId;

  String? selectedProductName;

  String? selectedProductUnit;

  int? invoiceId;

  Product? product;

  List<TaxRate>? taxRates;

  String? customerName;

  int? customerId;

  LineItem(
      {this.id,
      this.itemPrice,
      this.quantity,
      this.status,
      this.deliveredAt,
      this.scheduledDeliveryTime,
      this.deliveryLocationLat,
      this.deliveryLocationLong,
      this.deliveredById,
      this.deliveredByName,
      this.selectedProductId,
      this.selectedProductName,
      this.selectedProductUnit,
      this.invoiceId,
      this.product,
      this.taxRates,
      this.customerName,
      this.customerId});

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);

  static const fromJsonFactory = _$LineItemFromJson;

  Map<String, dynamic> toJson() => _$LineItemToJson(this);

  @override
  List<Object?> get props => [
        id,
        itemPrice,
        quantity,
        status,
        deliveredAt,
        scheduledDeliveryTime,
        deliveryLocationLat,
        deliveryLocationLong,
        deliveredById,
        deliveredByName,
        selectedProductId,
        selectedProductName,
        selectedProductUnit,
        invoiceId,
        product,
        taxRates,
        customerName,
        customerId
      ];
}

/*

part 'line_item.jser.dart';

class LineItem extends Equatable {
  int id;

  var itemPrice;

  var quantity;

  String status;

  DateTime deliveredAt;

  DateTime scheduledDeliveryTime;

  var deliveryLocationLat;

  var deliveryLocationLong;

  int deliveredById;

  String deliveredByName;

  int selectedProductId;

  String selectedProductName;

  String selectedProductUnit;

  int invoiceId;

  Product product;

  List<TaxRate> taxRates;

  String customerName;

  int customerId;

  LineItem(
      {this.id,
      this.itemPrice,
      this.quantity,
      this.status,
      this.deliveredAt,
      this.scheduledDeliveryTime,
      this.deliveryLocationLat,
      this.deliveryLocationLong,
      this.deliveredById,
      this.deliveredByName,
      this.selectedProductId,
      this.selectedProductName,
      this.selectedProductUnit,
      this.invoiceId,
      this.product,
      this.taxRates,
      this.customerName,
      this.customerId});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = LineItemSerializer();

  static LineItem fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [
    id,
    itemPrice,
    quantity,
    status,
    deliveredAt,
    scheduledDeliveryTime,
    deliveryLocationLat,
    deliveryLocationLong,
    deliveredById,
    deliveredByName,
    selectedProductId,
    selectedProductName,
    selectedProductUnit,
    invoiceId,
    product,
    taxRates,
    customerName,
    customerId
  ];
}

@GenSerializer()
class LineItemSerializer extends Serializer<LineItem>
    with _$LineItemSerializer {}
*/
