//import 'package:flutter/material.dart';

class Package {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating;
  final int price;
  final bool isFavourite, isPopular;
  int quantity = 1;

  Package({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Package> demoPackage = [
  Package(
    id: 1,
    images: [
      "assets/images/B1.png",
    ],
    title: "Paket Ulang Tahun",
    price: 9000,
    description:
        "Paket Ulang Tahun terdiri dari beberapa hidangan yang cocok untuk pesta ulang tahun.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Package(
    id: 2,
    images: [
      "assets/images/B2.png",
    ],
    title: "Paket Selametan",
    price: 5000,
    description:
        "Paket Selametan berisi makanan-makanan tradisional yang biasa disajikan dalam acara selametan.",
    rating: 4.1,
    isPopular: true,
  ),
];
