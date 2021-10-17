// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_address_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceAddressVM _$InvoiceAddressVMFromJson(Map<String, dynamic> json) =>
    InvoiceAddressVM(
      source: json['source'] == null
          ? null
          : Address.fromJson(json['source'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : Address.fromJson(json['destination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceAddressVMToJson(InvoiceAddressVM instance) =>
    <String, dynamic>{
      'source': instance.source?.toJson(),
      'destination': instance.destination?.toJson(),
    };
