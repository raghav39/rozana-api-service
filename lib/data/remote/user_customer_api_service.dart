import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/user_customer.dart';

part 'user_customer_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class UserCustomerApiService extends ChopperService {

  static UserCustomerApiService create([ChopperClient? client]) => _$UserCustomerApiService(client);

  @Get(path: "user-customers")
  Future<Response<List<UserCustomer>>> getAllUserCustomers(
      {@Query("page") int page = 0,
      @Query("size") int size = 20,
      @Query("sort") List<String>? sort});

  @Get(path: "user-customers/{customerId}")
  Future<Response<UserCustomer>> getUserCustomer(@Path() int customerId);

  @Get(path: "_search/user-customers")
  Future<Response<List<UserCustomer>>> searchUserCustomers(
      @Query("query") String query);

  @Get(path: "user-customers/count")
  Future<Response<int>> getUserCustomerCount();

  @Put(path: "user-customers")
  Future<Response<UserCustomer>> updateUserCustomers(@Body() UserCustomer userCustomer);
}
