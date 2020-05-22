import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';

class DeliverySlotItem {
  DeliverySlot deliverySlot;
  bool isEnabled;
  bool isSelected;
  String timingsToDisplay;

  DeliverySlotItem(
      {this.deliverySlot,
      this.isEnabled = true,
      this.isSelected = false,
      this.timingsToDisplay = ""});
}
