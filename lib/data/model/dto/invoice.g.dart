// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as int,
      customerId: json['customerId'] as int,
      organizationId: json['organizationId'] as int,
      deliveryAddressId: json['deliveryAddressId'] as int,
      date: json['date'],
      dueDate: json['dueDate'],
      selectedProducts: (json['selectedProducts'] as List<dynamic>?)
              ?.map((e) => SelectedProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptySelectedProductList,
      lineItems: (json['lineItems'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptyLineItemList,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptyAttachmentList,
      offers: (json['offers'] as List<dynamic>?)
              ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          emptyOfferList,
      isAddionalDiscountBeforeTax:
          json['isAddionalDiscountBeforeTax'] as bool? ?? true,
      draft: json['draft'] as bool? ?? true,
      status: json['status'] as String? ?? "DRAFT",
      orderStatus: json['orderStatus'] as String? ?? "ORDER_PLACED",
      paymentMode: json['paymentMode'] as String? ?? "CASH",
      deliveryMode: json['deliveryMode'] as String? ?? "DELIVERY",
      number: json['number'] as String?,
      amountPaid: json['amountPaid'],
      shippingCharge: json['shippingCharge'],
      additionalDiscount: json['additionalDiscount'],
      adjustment: json['adjustment'],
      totalAmountBeforeTax: json['totalAmountBeforeTax'],
      totalAmountAfterTax: json['totalAmountAfterTax'],
      remark: json['remark'] as String?,
      customerName: json['customerName'] as String?,
      transactionValueId: json['transactionValueId'] as int?,
      totalAmount: json['totalAmount'],
      deliveredById: json['deliveredById'] as int?,
      deliveredByName: json['deliveredByName'] as String?,
      promoCodeApplied: json['promoCodeApplied'] as String?,
      customerLogin: json['customerLogin'] as String?,
      createdBy: json['createdBy'] as String?,
      extPaymentId: json['extPaymentId'] as String?,
      extPaymentOrderId: json['extPaymentOrderId'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
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
          instance.selectedProducts.map((e) => e.toJson()).toList(),
      'lineItems': instance.lineItems.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'offers': instance.offers.map((e) => e.toJson()).toList(),
    };
