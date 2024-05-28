//import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating;
  final int price;
  final bool isFavourite, isPopular;
  int quantity = 1;

  Product({
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

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/eskrim.png",
    ],
    title: "Es Krim",
    price: 9000,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/nasi.png",
    ],
    title: "Nasi Putih",
    price: 5000,
    description: description,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/esteh.png",
    ],
    title: "Es Teh",
    price: 3655,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/sambal.png",
    ],
    title: "Sambal Pedas",
    price: 2020,
    description: description,
    isFavourite: true,
  ),
  Product(
    id: 1,
    images: [
      "assets/images/ayam.png",
    ],
    title: "Ayam Goreng",
    price: 6499,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/cumi.png",
    ],
    title: "Cumi Pedas",
    price: 505,
    description: description,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/tempe.png",
    ],
    title: "Tempe Goreng",
    price: 3655,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/tahu.png",
    ],
    title: "Tahu Goreng",
    price: 2020,
    description: description,
    isFavourite: true,
  ),
  Product(
    id: 1,
    images: [
      "assets/images/gurami.png",
    ],
    title: "Gurami Pedas",
    price: 2020,
    description: description,
    isFavourite: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/nasigoreng.png",
    ],
    title: "Nasi Goreng",
    price: 2020,
    description: description,
    isFavourite: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/udang.png",
    ],
    title: "Udang Pedas",
    price: 2020,
    description: description,
    isFavourite: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/perkedel.png",
    ],
    title: "Perkedel Goreng",
    price: 2020,
    description: description,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
