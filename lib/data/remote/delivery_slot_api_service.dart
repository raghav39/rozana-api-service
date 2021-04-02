import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';

part 'delivery_slot_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class DeliverySlotApiService extends ChopperService {

  static DeliverySlotApiService create([ChopperClient? client]) => _$DeliverySlotApiService(client);

  @Get(path: "delivery-slots")
  Future<Response<List<DeliverySlot>>> getAllDeliverySlots();

  @Get(path: "delivery-slots/{id}")
  Future<Response<DeliverySlot>> getDeliverySlot(@Path() int id);
}
