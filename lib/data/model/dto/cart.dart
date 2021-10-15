import 'package:rozana_api_service/data/model/dto/address.dart';
import 'package:rozana_api_service/data/model/dto/attachment.dart';
import 'package:rozana_api_service/data/model/dto/cart_item.dart';
import 'package:rozana_api_service/data/model/dto/delivery_slot.dart';
import 'package:rozana_api_service/data/model/dto/product_offer.dart';
import 'package:rozana_api_service/data/model/enums/delivery_mode.dart';

class Cart {
  DateTime? date;

  late DeliverySlot deliverySlot;

  List<CartItem> cartItems = [];

  late Address deliveryAddress;

  late double deliveryCharge;

  String? remark;

  DeliveryMode deliveryMode;

  String? promoCode;

  double additionalDiscount;

  List<Attachment> attachments = [];

  List<ProductOffer> offers = [];

  Cart({cartItems, deliveryMode, additionalDiscount, this.date})
      : this.cartItems = cartItems ?? [],
        this.deliveryMode = deliveryMode ?? DeliveryMode.DELIVERY,
        this.additionalDiscount = additionalDiscount ?? 0;
}
