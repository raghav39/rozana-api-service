// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthApiService extends AuthApiService {
  _$AuthApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthApiService;

  @override
  Future<Response<void>> registerCustomer(UserCustomer userCustomer) {
    final $url = '/api/register';
    final $body = userCustomer;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<void, void>($request);
  }

  @override
  Future<Response<void>> activateCustomer(String key, String login) {
    final $url = '/api/activate';
    final $params = <String, dynamic>{'key': key, 'login': login};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<void, void>($request);
  }

  @override
  Future<Response<JWTToken>> authenticateUser(LoginVm loginVm) {
    final $url = '/api/authenticate';
    final $body = loginVm;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<JWTToken, JWTToken>($request);
  }
}
