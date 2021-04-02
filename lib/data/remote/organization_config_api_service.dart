import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/organization_config.dart';

part 'organization_config_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class OrganizationConfigApiService extends ChopperService {

  static OrganizationConfigApiService create([ChopperClient? client]) => _$OrganizationConfigApiService(client);

  @Get(path: "organizationConfig")
  Future<Response<OrganizationConfig>> getOrganizationConfig();
}
