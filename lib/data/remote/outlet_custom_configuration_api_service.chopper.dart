// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_custom_configuration_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$OutletCustomConfigurationApiService
    extends OutletCustomConfigurationApiService {
  _$OutletCustomConfigurationApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OutletCustomConfigurationApiService;

  @override
  Future<Response<List<OutletCustomConfiguration>>>
      getOutletCustomConfiguration() {
    final $url = '/api/custom-configurations';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<OutletCustomConfiguration>,
        OutletCustomConfiguration>($request);
  }
}
