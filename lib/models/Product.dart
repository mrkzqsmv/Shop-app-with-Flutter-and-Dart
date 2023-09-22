import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}


List<Product> products = [
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Office Code',
      description: descriptionText,
      price: 234,
      size: 12,
      id: 1,
      color: const Color(0xFF3D82AE)),
  Product(
      image: 'assets/images/bag_2.png',
      title: 'Belt Bag',
      description: descriptionText,
      price: 234,
      size: 8,
      id: 2,
      color: const Color(0xFFD3A984)),
  Product(
      image: 'assets/images/bag_3.png',
      title: 'Hang Top',
      description: descriptionText,
      price: 234,
      size: 10,
      id: 3,
      color: const Color(0xFF989493)),
  Product(
      image: 'assets/images/bag_4.png',
      title: 'Old Fashion',
      description: descriptionText,
      price: 234,
      size: 11,
      id: 4,
      color: const Color(0xFFE6B398)),
  Product(
      image: 'assets/images/bag_5.png',
      title: 'Office Code',
      description: descriptionText,
      price: 234,
      size: 12,
      id: 5,
      color: const Color(0xFFFB7883)),
  Product(
      image: 'assets/images/bag_6.png',
      title: 'Office Code',
      description: descriptionText,
      price: 234,
      size: 12,
      id: 6,
      color: const Color(0xFFAEAEAE)),
];

String descriptionText =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. When an unknown printer took a galley.';
