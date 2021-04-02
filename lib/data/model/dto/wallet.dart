import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Wallet extends Equatable {
  final int customerId;

  final double amount;

  Wallet({required this.customerId, required this.amount});

  factory Wallet.fromJson(Map<String, dynamic> json) =>
      _$WalletFromJson(json);

  static const fromJsonFactory = _$WalletFromJson;

  Map<String, dynamic> toJson() => _$WalletToJson(this);

  @override
  List<Object> get props => [customerId, amount];
}