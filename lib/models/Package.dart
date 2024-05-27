//import 'package:flutter/material.dart';

class Package {
  final int id;
  final String title, description;
  final List<String> images;
  //final List<Color> colors;
  final double rating;
  final int price;
  final bool isFavourite, isPopular;
  int quantity = 1;

  Package({
    required this.id,
    required this.images,
    //required this.colors,
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
      "images/B1.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Paket Ulang Tahun",
    price: 9000,
    description: "Paket Ulang Tahun terdiri dari beberapa hidangan yang cocok untuk pesta ulang tahun.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Package(
    id: 2,
    images: [
      "images/B2.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Paket Selametan",
    price: 5000,
    description: "Paket Selametan berisi makanan-makanan tradisional yang biasa disajikan dalam acara selametan.",
    rating: 4.1,
    isPopular: true,
  ),
];
//   Package(
//     id: 3,
//     images: [
//       "images/esteh.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Es Teh",
//     price: 3655,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Package(
//     id: 4,
//     images: [
//       "images/sambal.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Sambal Pedas",
//     price: 2020,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//   ),
//   Package(
//     id: 1,
//     images: [
//       "images/ayam.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Ayam Goreng",
//     price: 6499,
//     description: description,
//     rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Package(
//     id: 2,
//     images: [
//       "images/cumi.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Cumi Pedas",
//     price: 505,
//     description: description,
//     rating: 4.1,
//     isPopular: true,
//   ),
//   Package(
//     id: 3,
//     images: [
//       "images/tempe.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Tempe Goreng",
//     price: 3655,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Package(
//     id: 4,
//     images: [
//       "images/tahu.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Tahu Goreng",
//     price: 2020,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//   ),
//   Package(
//     id: 1,
//     images: [
//       "images/gurami.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Gurami Pedas",
//     price: 2020,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//   ),
//  Package(
//     id: 2,
//     images: [
//       "images/nasigoreng.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Nasi Goreng",
//     price: 2020,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//   ),
//   Package(
//     id: 3,
//     images: [
//       "images/udang.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Udang Pedas",
//     price: 2020,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//   ),
//   Package(
//     id: 4,
//     images: [
//       "images/perkedel.png",
//     ],
//     colors: [
//       const Color(0xFFF6625E),
//       const Color(0xFF836DB8),
//       const Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Perkedel Goreng",
//     price: 2020,
//     description: description,
//     rating: 4.1,
//     isFavourite: true,
//   ),
// ];

// const String description =
//     "Paket Ulang Tahun terdiri dari beberapa ..."
// ];