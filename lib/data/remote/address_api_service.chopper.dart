// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AddressApiService extends AddressApiService {
  _$AddressApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AddressApiService;

  @override
  Future<Response<Address>> updateAddress(Address address) {
    final $url = '/api/addresses';
    final $body = address;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<Address, Address>($request);
  }
}
