import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/device.dart';

part 'device_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class DeviceApiService extends ChopperService {

  static DeviceApiService create([ChopperClient client]) => _$DeviceApiService(client);

  @Post(path: "devices")
  Future<Response<Device>> createDeviceInfo(@Body() Device device);
}
