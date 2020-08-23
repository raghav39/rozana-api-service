import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/attachment.dart';
import 'package:rozana_api_service/data/model/dto/cart_item.dart';
import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';
import 'package:rozana_api_service/data/model/dto/product_offer.dart';

class Cart {
  DateTime date;

  DeliverySlot deliverySlot;

  List<CartItem> cartItems;

  Address deliveryAddress;

  double deliveryCharge;

  String remark;

  String paymentMode;

  List<Attachment> attachments = [];

  List<ProductOffer> offers = [];

  Cart({this.cartItems, this.date});
}
