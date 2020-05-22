import "dart:async";

import 'package:chopper/chopper.dart';

part 'order_transaction_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class OrderTransactionApiService extends ChopperService {

  static OrderTransactionApiService create([ChopperClient client]) => _$OrderTransactionApiService(client);

  @Get(path: "order-transactions/count")
  Future<Response<int>> getOrderTransactionCount();
}
