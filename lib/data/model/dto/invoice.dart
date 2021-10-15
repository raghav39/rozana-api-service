import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/attachment.dart';
import 'package:rozana_api_service/data/model/dto/base_dto.dart';
import 'package:rozana_api_service/data/model/dto/line_item.dart';
import 'package:rozana_api_service/data/model/dto/offer.dart';
import 'package:rozana_api_service/data/model/dto/selected_product.dart';

part 'invoice.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Invoice extends Equatable implements BaseDto {
  @override
  int id;

  String? number;

  DateTime date;

  DateTime dueDate;

  var amountPaid;

  var shippingCharge;

  var additionalDiscount;

  bool isAddionalDiscountBeforeTax;

  var adjustment;

  var totalAmountBeforeTax;

  var totalAmountAfterTax;

  String status;

  String orderStatus;

  String? remark;

  int customerId;

  String? customerName;

  int? transactionValueId;

  int organizationId;

  var totalAmount;

  int? deliveredById;

  String? deliveredByName;

  String? promoCodeApplied;

  int deliveryAddressId;

  String? customerLogin;

  String? createdBy;

  String paymentMode;

  String? extPaymentId;

  String? extPaymentOrderId;

  bool draft;

  String deliveryMode;

  List<SelectedProduct> selectedProducts;

  List<LineItem> lineItems;

  List<Attachment> attachments;

  List<Offer> offers;

  Invoice({
    required this.id,
    required this.customerId,
    required this.organizationId,
    required this.deliveryAddressId,
    DateTime? date,
    DateTime? dueDate,
    List<SelectedProduct>? selectedProducts,
    List<LineItem>? lineItems,
    List<Attachment>? attachments,
    List<Offer>? offers,
    this.isAddionalDiscountBeforeTax = true,
    this.draft = true,
    this.status = "DRAFT",
    this.orderStatus = "ORDER_PLACED",
    this.paymentMode = "CASH",
    this.deliveryMode = "DELIVERY",
    this.number,
    this.amountPaid,
    this.shippingCharge,
    this.additionalDiscount,
    this.adjustment,
    this.totalAmountBeforeTax,
    this.totalAmountAfterTax,
    this.remark,
    this.customerName,
    this.transactionValueId,
    this.totalAmount,
    this.deliveredById,
    this.deliveredByName,
    this.promoCodeApplied,
    this.customerLogin,
    this.createdBy,
    this.extPaymentId,
    this.extPaymentOrderId,
  })  : this.date = date ?? DateTime.now(),
        this.dueDate = dueDate ?? DateTime.now(),
        this.selectedProducts = selectedProducts ?? <SelectedProduct>[],
        this.lineItems = lineItems ?? <LineItem>[],
        this.attachments = attachments ?? <Attachment>[],
        this.offers = offers ?? <Offer>[],
        super();

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
