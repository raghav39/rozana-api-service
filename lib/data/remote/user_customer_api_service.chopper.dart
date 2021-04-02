// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_customer_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$UserCustomerApiService extends UserCustomerApiService {
  _$UserCustomerApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserCustomerApiService;

  @override
  Future<Response<List<UserCustomer>>> getAllUserCustomers(
      {int page = 0, int size = 20, List<String>? sort}) {
    final $url = '/api/user-customers';
    final $params = <String, dynamic>{'page': page, 'size': size, 'sort': sort};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<UserCustomer>, UserCustomer>($request);
  }

  @override
  Future<Response<UserCustomer>> getUserCustomer(int customerId) {
    final $url = '/api/user-customers/$customerId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserCustomer, UserCustomer>($request);
  }

  @override
  Future<Response<List<UserCustomer>>> searchUserCustomers(String query) {
    final $url = '/api/_search/user-customers';
    final $params = <String, dynamic>{'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<UserCustomer>, UserCustomer>($request);
  }

  @override
  Future<Response<int>> getUserCustomerCount() {
    final $url = '/api/user-customers/count';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<UserCustomer>> updateUserCustomers(
      UserCustomer userCustomer) {
    final $url = '/api/user-customers';
    final $body = userCustomer;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<UserCustomer, UserCustomer>($request);
  }
}
