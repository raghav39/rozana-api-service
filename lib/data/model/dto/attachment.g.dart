// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return Attachment(
    id: json['id'] as int,
    invoiceId: json['invoiceId'] as int,
    invoiceNumber: json['invoiceNumber'] as String,
    documentUrl: json['documentUrl'] as String,
  );
}

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceId': instance.invoiceId,
      'invoiceNumber': instance.invoiceNumber,
      'documentUrl': instance.documentUrl,
    };
