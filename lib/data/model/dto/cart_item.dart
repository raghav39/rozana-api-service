import 'package:rozana_api_service/data/model/dto/product.dart';

class CartItem {
  Product product;
  int quantity;

  CartItem({this.product, this.quantity = 0});

}
