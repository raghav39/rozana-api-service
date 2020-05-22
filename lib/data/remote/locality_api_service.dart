import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/locality.dart';

part 'locality_api_service.chopper.dart';

@ChopperApi(baseUrl: "/maps/api/geocode")
abstract class LocalityApiService extends ChopperService {

  static LocalityApiService create([ChopperClient client]) => _$LocalityApiService(client);

  @Get(path: "json")
  Future<Response<Locality>> getLocalityByZipCode(@Query() String address,
      @Query() bool sensor, @Query() String key);
}
