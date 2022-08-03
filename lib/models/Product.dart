// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

// Demo Products
List<Product> demoProducts = [
  Product(
    id: 1,
    title: 'Wireless Controller for PS4',
    rating: 4.8,
    price: 64.99,
    isPopular: true,
    isFavorite: true,
    description: description,
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    images: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png',
    ],
  ),
  Product(
    id: 2,
    title: 'Nike Sport White - Man Pant',
    rating: 4.5,
    price: 50.5,
    isPopular: true,
    description: description,
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    images: ['assets/images/Image Popular Product 2.png'],
  ),
  Product(
    id: 3,
    title: 'Gloves XC Omega - Polygon',
    rating: 4.2,
    price: 36.55,
    isPopular: true,
    isFavorite: true,
    description: description,
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    images: ['assets/images/glap.png'],
  ),
  Product(
    id: 4,
    title: 'Logitech Head',
    rating: 4.1,
    price: 20.20,
    isFavorite: true,
    description: description,
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    images: ['assets/images/wireless headset.png'],
  ),
];
