// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locality_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$LocalityApiService extends LocalityApiService {
  _$LocalityApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LocalityApiService;

  @override
  Future<Response<Locality>> getLocalityByZipCode(
      String address, bool sensor, String key) {
    final $url = '/maps/api/geocode/json';
    final $params = <String, dynamic>{
      'address': address,
      'sensor': sensor,
      'key': key
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Locality, Locality>($request);
  }
}
