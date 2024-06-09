import 'package:catering6/models/Product.dart';
import 'package:catering6/screens/details/components/color_dots.dart';
import 'package:flutter/material.dart';

class DetailsScreen2 extends StatefulWidget {
  final Product product; // tambahan ng property na package

  DetailsScreen2({required this.product}); // konstruktor ng DetailsPackage2

  @override
  _DetailsScreen2 createState() => _DetailsScreen2(
      product:
          product); // ipasa ang package sa konstruktor ng _DetailsPackageState
}

class _DetailsScreen2 extends State<DetailsScreen2> {
  final Product product; // inisialisasi variabel package

  _DetailsScreen2(
      {required this.product}); // konstruktor untuk menginisialisasi package

  void _updateQuantity(int quantity) {
    setState(() {
      product.quantity = quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ...
        ColorDots(
          product: product, // gunakan variabel package yang telah didefinisikan
          onQuantityChanged: _updateQuantity,
        ),
      ],
    );
  }
}
