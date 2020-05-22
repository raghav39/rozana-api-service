// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$InvoiceApiService extends InvoiceApiService {
  _$InvoiceApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = InvoiceApiService;

  @override
  Future<Response<List<Invoice>>> getAllInvoices(
      {int page = 0, int size = 20, String sortBy = "id,desc"}) {
    final $url = '/api/invoices';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sortBy
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Invoice>, Invoice>($request);
  }

  @override
  Future<Response<Invoice>> getInvoice(int id) {
    final $url = '/api/invoices/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Invoice, Invoice>($request);
  }

  @override
  Future<Response<List<Invoice>>> getInvoiceByDate(dynamic date,
      {int page = 0, int size = 20}) {
    final $url = '/api/invoices';
    final $params = <String, dynamic>{
      'date.equals': date,
      'page': page,
      'size': size
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Invoice>, Invoice>($request);
  }

  @override
  Future<Response<Invoice>> createInvoice(Invoice invoice) {
    final $url = '/api/invoices';
    final $body = invoice;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Invoice, Invoice>($request);
  }

  @override
  Future<Response<Invoice>> updateInvoice(Invoice invoice) {
    final $url = '/api/invoices';
    final $body = invoice;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<Invoice, Invoice>($request);
  }

  @override
  Future<Response<int>> getInvoiceCount() {
    final $url = '/api/invoices/count';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<int, int>($request);
  }
}
