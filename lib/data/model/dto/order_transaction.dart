import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_transaction.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class OrderTransaction extends Equatable {
  OrderTransaction();

  factory OrderTransaction.fromJson(Map<String, dynamic> json) =>
      _$OrderTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTransactionToJson(this);

  static const fromJsonFactory = _$OrderTransactionFromJson;

  @override
  List<Object> get props => [];
}
/*
part 'order_transaction.jser.dart';

class OrderTransaction  extends Equatable {
  OrderTransaction();

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = OrderTransactionSerializer();

  static OrderTransaction fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [];
}

@GenSerializer()
class OrderTransactionSerializer extends Serializer<OrderTransaction>
    with _$OrderTransactionSerializer {}*/
