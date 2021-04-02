// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_transaction_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$OrderTransactionApiService extends OrderTransactionApiService {
  _$OrderTransactionApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OrderTransactionApiService;

  @override
  Future<Response<int>> getOrderTransactionCount() {
    final $url = '/api/order-transactions/count';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<int, int>($request);
  }
}
