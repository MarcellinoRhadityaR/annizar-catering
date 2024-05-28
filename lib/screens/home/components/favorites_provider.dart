import 'package:flutter/material.dart';
import '../../../models/Product.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Product> _favoriteProducts = [];

  List<Product> get favoriteProducts => _favoriteProducts;

  void addFavorite(Product product) {
    _favoriteProducts.add(product);
    notifyListeners();
  }

  void removeFavorite(Product product) {
    _favoriteProducts.remove(product);
    notifyListeners();
  }

  bool isFavoriteProduct(Product product) {
    return _favoriteProducts.contains(product);
  }
}
