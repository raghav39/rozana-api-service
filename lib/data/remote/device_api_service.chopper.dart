// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$DeviceApiService extends DeviceApiService {
  _$DeviceApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeviceApiService;

  @override
  Future<Response<Device>> createDeviceInfo(Device device) {
    final $url = '/api/devices';
    final $body = device;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Device, Device>($request);
  }
}
