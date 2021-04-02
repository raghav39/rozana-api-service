// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_slot_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$DeliverySlotApiService extends DeliverySlotApiService {
  _$DeliverySlotApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeliverySlotApiService;

  @override
  Future<Response<List<DeliverySlot>>> getAllDeliverySlots() {
    final $url = '/api/delivery-slots';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<DeliverySlot>, DeliverySlot>($request);
  }

  @override
  Future<Response<DeliverySlot>> getDeliverySlot(int id) {
    final $url = '/api/delivery-slots/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DeliverySlot, DeliverySlot>($request);
  }
}
