import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';

part 'invoice_address_vm.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class InvoiceAddressVM extends Equatable {
  Address? source;

  Address? destination;

  InvoiceAddressVM({
    this.source,
    this.destination,
  });

  factory InvoiceAddressVM.fromJson(Map<String, dynamic> json) =>
      _$InvoiceAddressVMFromJson(json);

  static const fromJsonFactory = _$InvoiceAddressVMFromJson;

  Map<String, dynamic> toJson() => _$InvoiceAddressVMToJson(this);

  @override
  List<Object?> get props => [
        source,
        destination,
      ];
}
