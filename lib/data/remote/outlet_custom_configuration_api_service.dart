import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/outlet_custom_configuration.dart';

part 'outlet_custom_configuration_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class OutletCustomConfigurationApiService extends ChopperService {
  static OutletCustomConfigurationApiService create([ChopperClient client]) =>
      _$OutletCustomConfigurationApiService(client);

  @Get(path: "custom-configurations")
  Future<Response<List<OutletCustomConfiguration>>>
      getOutletCustomConfiguration();
}
