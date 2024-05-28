import 'package:catering6/models/Cart.dart';
import 'package:catering6/models/Product.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<Cart> _items = [];

  List<Cart> get items => _items;

  void addToCart(Product product) {
    for (Cart item in _items) {
      if (item.product.id == product.id) {
        item.numOfItem++;
        notifyListeners();
        return;
      }
    }
    _items.add(Cart(product: product, numOfItem: 1));
    notifyListeners();
  }
}
