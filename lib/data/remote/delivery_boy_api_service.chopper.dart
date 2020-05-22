// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_boy_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$DeliveryBoyApiService extends DeliveryBoyApiService {
  _$DeliveryBoyApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeliveryBoyApiService;

  @override
  Future<Response<int>> getDeliveryBoyCount() {
    final $url = '/api/delivery-boy-users/count';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<DeliveryBoyUser>>> getAllDeliveryBoys() {
    final $url = '/api/delivery-boy-users';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<DeliveryBoyUser>, DeliveryBoyUser>($request);
  }
}
