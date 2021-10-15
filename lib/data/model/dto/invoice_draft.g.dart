// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_draft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceDraft _$InvoiceDraftFromJson(Map<String, dynamic> json) => InvoiceDraft(
      deliveryAddressId: json['deliveryAddressId'] as int? ?? -1,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      selectedProducts: (json['selectedProducts'] as List<dynamic>?)
          ?.map((e) => SelectedProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineItems: (json['lineItems'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
      draft: json['draft'] as bool? ?? true,
      status: json['status'] as String? ?? "DRAFT",
      orderStatus: json['orderStatus'] as String? ?? "ORDER_PLACED",
      paymentMode: json['paymentMode'] as String? ?? "CASH",
      deliveryMode: json['deliveryMode'] as String? ?? "DELIVERY",
      amountPaid: json['amountPaid'],
      remark: json['remark'] as String?,
      totalAmount: json['totalAmount'],
      promoCodeApplied: json['promoCodeApplied'] as String?,
      extPaymentId: json['extPaymentId'] as String?,
      extPaymentOrderId: json['extPaymentOrderId'] as String?,
    );

Map<String, dynamic> _$InvoiceDraftToJson(InvoiceDraft instance) =>
    <String, dynamic>{
      'dueDate': instance.dueDate.toIso8601String(),
      'amountPaid': instance.amountPaid,
      'status': instance.status,
      'orderStatus': instance.orderStatus,
      'remark': instance.remark,
      'totalAmount': instance.totalAmount,
      'promoCodeApplied': instance.promoCodeApplied,
      'deliveryAddressId': instance.deliveryAddressId,
      'paymentMode': instance.paymentMode,
      'extPaymentId': instance.extPaymentId,
      'extPaymentOrderId': instance.extPaymentOrderId,
      'draft': instance.draft,
      'deliveryMode': instance.deliveryMode,
      'selectedProducts':
          instance.selectedProducts.map((e) => e.toJson()).toList(),
      'lineItems': instance.lineItems.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'offers': instance.offers.map((e) => e.toJson()).toList(),
    };
