import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Wallet extends Equatable {
  int customerId;

  double amount;

  Wallet({this.customerId, this.amount});

  factory Wallet.fromJson(Map<String, dynamic> json) =>
      _$WalletFromJson(json);

  static const fromJsonFactory = _$WalletFromJson;

  Map<String, dynamic> toJson() => _$WalletToJson(this);

  @override
  List<Object> get props => [customerId, amount];
}
/*

part 'wallet.jser.dart';

class Wallet extends Equatable {
  int customerId;

  double amount;

  Wallet({this.customerId, this.amount});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = WalletSerializer();

  static Wallet fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [customerId, amount];
}

@GenSerializer()
class WalletSerializer extends Serializer<Wallet> with _$WalletSerializer {}
*/
