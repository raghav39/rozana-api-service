// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_config_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$OrganizationConfigApiService extends OrganizationConfigApiService {
  _$OrganizationConfigApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OrganizationConfigApiService;

  @override
  Future<Response<OrganizationConfig>> getOrganizationConfig() {
    final $url = '/api/organizationConfig';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<OrganizationConfig, OrganizationConfig>($request);
  }
}
