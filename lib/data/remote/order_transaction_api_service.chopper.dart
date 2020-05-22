// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_transaction_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$OrderTransactionApiService extends OrderTransactionApiService {
  _$OrderTransactionApiService([ChopperClient client]) {
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
