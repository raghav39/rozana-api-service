import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/attachment.dart';
import 'package:rozana_api_service/data/model/dto/line_item.dart';
import 'package:rozana_api_service/data/model/dto/offer.dart';
import 'package:rozana_api_service/data/model/dto/selected_product.dart';

part 'invoice_draft.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class InvoiceDraft extends Equatable {
  DateTime dueDate;

  var amountPaid;

  String status;

  String orderStatus;

  String? remark;

  var totalAmount;

  String? promoCodeApplied;

  int deliveryAddressId;

  String paymentMode;

  String? extPaymentId;

  String? extPaymentOrderId;

  bool draft;

  String deliveryMode;

  List<SelectedProduct> selectedProducts;

  List<LineItem> lineItems;

  List<Attachment> attachments;

  List<Offer> offers;

  InvoiceDraft({
    required this.deliveryAddressId,
    DateTime? date,
    DateTime? dueDate,
    List<SelectedProduct>? selectedProducts,
    List<LineItem>? lineItems,
    List<Attachment>? attachments,
    List<Offer>? offers,
    this.draft = true,
    this.status = "DRAFT",
    this.orderStatus = "ORDER_PLACED",
    this.paymentMode = "CASH",
    this.deliveryMode = "DELIVERY",
    this.amountPaid,
    this.remark,
    this.totalAmount,
    this.promoCodeApplied,
    this.extPaymentId,
    this.extPaymentOrderId,
  })  : this.dueDate = dueDate ?? DateTime.now(),
        this.selectedProducts = selectedProducts ?? <SelectedProduct>[],
        this.lineItems = lineItems ?? <LineItem>[],
        this.attachments = attachments ?? <Attachment>[],
        this.offers = offers ?? <Offer>[],
        super();

  factory InvoiceDraft.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDraftFromJson(json);

  static const fromJsonFactory = _$InvoiceDraftFromJson;

  Map<String, dynamic> toJson() => _$InvoiceDraftToJson(this);

  @override
  List<Object?> get props => [
        dueDate,
        amountPaid,
        status,
        orderStatus,
        remark,
        totalAmount,
        promoCodeApplied,
        deliveryAddressId,
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
