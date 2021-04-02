import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/attachment.dart';
import 'package:rozana_api_service/data/model/dto/cart_item.dart';
import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';
import 'package:rozana_api_service/data/model/dto/product_offer.dart';

class Cart {
  DateTime? date;

  late DeliverySlot deliverySlot;

  List<CartItem>? cartItems;

  late Address deliveryAddress;

  late double deliveryCharge;

  String? remark;

  List<Attachment> attachments = [];

  List<ProductOffer> offers = [];

  Cart({this.cartItems, this.date});
}
