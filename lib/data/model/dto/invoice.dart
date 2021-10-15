import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/attachment.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/invoice_draft.dart';
import 'package:rozana_api_service/data/model/dto/line_item.dart';
import 'package:rozana_api_service/data/model/dto/offer.dart';
import 'package:rozana_api_service/data/model/dto/selected_product.dart';

part 'invoice.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Invoice extends InvoiceDraft implements BaseDto {
  @override
  int id;

  int organizationId;
  int customerId;
  DateTime date;
  var shippingCharge;
  var additionalDiscount;
  String? number;
  String? customerLogin;
  String? createdBy;
  int? deliveredById;
  String? customerName;
  String? deliveredByName;
  var totalAmountBeforeTax;
  var totalAmountAfterTax;
  bool isAddionalDiscountBeforeTax;
  int? transactionValueId;
  var adjustment;

  Invoice({
    required this.id,
    required this.customerId,
    required this.organizationId,
    int deliveryAddressId = -1,
    this.isAddionalDiscountBeforeTax = true,
    this.number,
    this.shippingCharge,
    this.additionalDiscount,
    this.adjustment,
    this.totalAmountBeforeTax,
    this.totalAmountAfterTax,
    this.customerName,
    this.transactionValueId,
    this.deliveredById,
    this.deliveredByName,
    this.customerLogin,
    this.createdBy,
    DateTime? date,
    DateTime? dueDate,
    List<SelectedProduct>? selectedProducts,
    List<LineItem>? lineItems,
    List<Attachment>? attachments,
    List<Offer>? offers,
    bool draft = true,
    String status = "DRAFT",
    String orderStatus = "ORDER_PLACED",
    String paymentMode = "CASH",
    String deliveryMode = "DELIVERY",
    var amountPaid,
    var totalAmount,
    String? remark,
    String? promoCodeApplied,
    String? extPaymentId,
    String? extPaymentOrderId,
  })  : this.date = date ?? DateTime.now(),
        super(
            deliveryAddressId: deliveryAddressId,
            dueDate: dueDate,
            selectedProducts: selectedProducts,
            lineItems: lineItems,
            attachments: attachments,
            offers: offers,
            amountPaid: amountPaid,
            remark: remark,
            totalAmount: totalAmount,
            promoCodeApplied: promoCodeApplied,
            extPaymentId: extPaymentId,
            extPaymentOrderId: extPaymentOrderId) {
    final DateTime now = DateTime.now();
    this.date = date ?? DateTime(now.year, now.month, now.day);
  }

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  static const fromJsonFactory = _$InvoiceFromJson;

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  @override
  List<Object?> get props => [
        id,
        number,
        date,
        dueDate,
        amountPaid,
        shippingCharge,
        additionalDiscount,
        isAddionalDiscountBeforeTax,
        adjustment,
        totalAmountBeforeTax,
        totalAmountAfterTax,
        status,
        orderStatus,
        remark,
        customerId,
        customerName,
        transactionValueId,
        organizationId,
        totalAmount,
        deliveredById,
        deliveredByName,
        promoCodeApplied,
        deliveryAddressId,
        customerLogin,
        createdBy,
        paymentMode,
        selectedProducts,
        lineItems,
        attachments,
        offers,
        extPaymentId,
        extPaymentOrderId,
        draft,
        deliveryMode
      ];
}
