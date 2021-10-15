import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/invoice.dart';
import 'package:rozana_api_service/data/model/dto/invoice_draft.dart';

part 'invoice_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class InvoiceApiService extends ChopperService {
  static InvoiceApiService create([ChopperClient? client]) =>
      _$InvoiceApiService(client);

  @Get(path: "invoices")
  Future<Response<List<Invoice>>> getAllInvoices(
      {@Query("page") int page = 0,
      @Query("size") int size = 20,
      @Query("sort") String sortBy = "id,desc"});

  @Get(path: "invoices/{id}")
  Future<Response<Invoice>> getInvoice(@Path() int id);

  @Get(path: "invoices")
  Future<Response<List<Invoice>>> getInvoiceByDate(@Query("date.equals") date,
      {@Query("page") int page = 0, @Query("size") int size = 20});

  @Post(path: "invoices")
  Future<Response<Invoice>> createInvoice(@Body() InvoiceDraft invoice);

  @Put(path: "invoices")
  Future<Response<Invoice>> updateInvoice(@Body() Invoice invoice);

  @Put(path: "invoices/draft-status")
  Future<Response<Invoice>> updateInvoiceDraft(@Body() Invoice invoice);

  @Put(path: "invoices/delivery-boy")
  Future<Response<Invoice>> updateDeliveryBoy(@Body() Invoice invoice);

  @Put(path: "invoices/order-status")
  Future<Response<Invoice>> updateOrderStatus(@Body() Invoice invoice);

  @Get(path: "invoices/count")
  Future<Response<int>> getInvoiceCount();
}
