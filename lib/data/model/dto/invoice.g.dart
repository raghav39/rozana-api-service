// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as int?,
      number: json['number'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      amountPaid: json['amountPaid'],
      shippingCharge: json['shippingCharge'],
      additionalDiscount: json['additionalDiscount'],
      isAddionalDiscountBeforeTax: json['isAddionalDiscountBeforeTax'] as bool?,
      adjustment: json['adjustment'],
      totalAmountBeforeTax: json['totalAmountBeforeTax'],
      totalAmountAfterTax: json['totalAmountAfterTax'],
      status: json['status'] as String?,
      orderStatus: json['orderStatus'] as String?,
      remark: json['remark'] as String?,
      customerId: json['customerId'] as int?,
      customerName: json['customerName'] as String?,
      transactionValueId: json['transactionValueId'] as int?,
      organizationId: json['organizationId'] as int?,
      totalAmount: json['totalAmount'],
      deliveredById: json['deliveredById'] as int?,
      deliveredByName: json['deliveredByName'] as String?,
      promoCodeApplied: json['promoCodeApplied'] as String?,
      deliveryAddressId: json['deliveryAddressId'] as int?,
      customerLogin: json['customerLogin'] as String?,
      createdBy: json['createdBy'] as String?,
      paymentMode: json['paymentMode'] as String?,
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
      extPaymentId: json['extPaymentId'] as String?,
      extPaymentOrderId: json['extPaymentOrderId'] as String?,
      draft: json['draft'] as bool?,
      deliveryMode: json['deliveryMode'] as String? ?? "DELIVERY",
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'date': instance.date?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'amountPaid': instance.amountPaid,
      'shippingCharge': instance.shippingCharge,
      'additionalDiscount': instance.additionalDiscount,
      'isAddionalDiscountBeforeTax': instance.isAddionalDiscountBeforeTax,
      'adjustment': instance.adjustment,
      'totalAmountBeforeTax': instance.totalAmountBeforeTax,
      'totalAmountAfterTax': instance.totalAmountAfterTax,
      'status': instance.status,
      'orderStatus': instance.orderStatus,
      'remark': instance.remark,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'transactionValueId': instance.transactionValueId,
      'organizationId': instance.organizationId,
      'totalAmount': instance.totalAmount,
      'deliveredById': instance.deliveredById,
      'deliveredByName': instance.deliveredByName,
      'promoCodeApplied': instance.promoCodeApplied,
      'deliveryAddressId': instance.deliveryAddressId,
      'customerLogin': instance.customerLogin,
      'createdBy': instance.createdBy,
      'paymentMode': instance.paymentMode,
      'extPaymentId': instance.extPaymentId,
      'extPaymentOrderId': instance.extPaymentOrderId,
      'draft': instance.draft,
      'deliveryMode': instance.deliveryMode,
      'selectedProducts':
          instance.selectedProducts?.map((e) => e.toJson()).toList(),
      'lineItems': instance.lineItems?.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
    };
