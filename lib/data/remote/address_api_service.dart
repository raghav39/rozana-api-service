import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/address.dart';

part 'address_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class AddressApiService extends ChopperService {
  static AddressApiService create([ChopperClient client]) => _$AddressApiService(client);
  @Put(path: "addresses")
  Future<Response<Address>> updateAddress(@Body() Address address);
}