import 'package:catering6/models/Package.dart';
import 'package:catering6/screens/details/components/color_dots_package.dart';
import 'package:flutter/material.dart';

class DetailsPackage2 extends StatefulWidget {
  final Package package; // tambahan ng property na package

  DetailsPackage2({required this.package}); // konstruktor ng DetailsPackage2

  @override
  _DetailsPackageState createState() => _DetailsPackageState(
      package:
          package); // ipasa ang package sa konstruktor ng _DetailsPackageState
}

class _DetailsPackageState extends State<DetailsPackage2> {
  final Package package; // inisialisasi variabel package

  _DetailsPackageState(
      {required this.package}); // konstruktor untuk menginisialisasi package

  void _updateQuantity(int quantity) {
    setState(() {
      package.quantity = quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ...
        ColorDotsPackage(
          package: package, // gunakan variabel package yang telah didefinisikan
          onQuantityChanged: _updateQuantity,
        ),
      ],
    );
  }
}
