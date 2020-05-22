import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy_user.dart';

part 'delivery_boy_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class DeliveryBoyApiService extends ChopperService {

  static DeliveryBoyApiService create([ChopperClient client]) => _$DeliveryBoyApiService(client);

  @Get(path: "delivery-boy-users/count")
  Future<Response<int>> getDeliveryBoyCount();

  @Get(path: "delivery-boy-users")
  Future<Response<List<DeliveryBoyUser>>> getAllDeliveryBoys();
}
