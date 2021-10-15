// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as int,
      customerId: json['customerId'] as int,
      organizationId: json['organizationId'] as int,
      deliveryAddressId: json['deliveryAddressId'] as int? ?? -1,
      isAddionalDiscountBeforeTax:
          json['isAddionalDiscountBeforeTax'] as bool? ?? true,
      number: json['number'] as String?,
      shippingCharge: json['shippingCharge'],
      additionalDiscount: json['additionalDiscount'],
      adjustment: json['adjustment'],
      totalAmountBeforeTax: json['totalAmountBeforeTax'],
      totalAmountAfterTax: json['totalAmountAfterTax'],
      customerName: json['customerName'] as String?,
      transactionValueId: json['transactionValueId'] as int?,
      deliveredById: json['deliveredById'] as int?,
      deliveredByName: json['deliveredByName'] as String?,
      customerLogin: json['customerLogin'] as String?,
      createdBy: json['createdBy'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
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
      totalAmount: json['totalAmount'],
      remark: json['remark'] as String?,
      promoCodeApplied: json['promoCodeApplied'] as String?,
      extPaymentId: json['extPaymentId'] as String?,
      extPaymentOrderId: json['extPaymentOrderId'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
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
      'id': instance.id,
      'organizationId': instance.organizationId,
      'customerId': instance.customerId,
      'date': instance.date.toIso8601String(),
      'shippingCharge': instance.shippingCharge,
      'additionalDiscount': instance.additionalDiscount,
      'number': instance.number,
      'customerLogin': instance.customerLogin,
      'createdBy': instance.createdBy,
      'deliveredById': instance.deliveredById,
      'customerName': instance.customerName,
      'deliveredByName': instance.deliveredByName,
      'totalAmountBeforeTax': instance.totalAmountBeforeTax,
      'totalAmountAfterTax': instance.totalAmountAfterTax,
      'isAddionalDiscountBeforeTax': instance.isAddionalDiscountBeforeTax,
      'transactionValueId': instance.transactionValueId,
      'adjustment': instance.adjustment,
    };
