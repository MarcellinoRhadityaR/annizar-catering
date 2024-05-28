import 'package:catering6/models/Cart.dart';
import 'package:catering6/models/Product.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {

  double get totalAmount {
    double total = 0;
    for (Cart item in _items) {
      total += item.product.price * item.numOfItem;
    }
    return total;
  }
  void removeItem(Product product) {
    // Implement the logic to remove the item from the cart
    // You can iterate over the items and remove the item that matches the given product
    _items.removeWhere((item) => item.product.id == product.id);
    notifyListeners();
  }

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
