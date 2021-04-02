import 'package:rozana_api_service/data/model/dto/product.dart';

class CartItem {
  late final Product product;
  final int quantity;

  CartItem({required this.product, this.quantity = 0});
}
