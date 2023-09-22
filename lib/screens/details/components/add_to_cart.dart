// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
     required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              border: Border.all(
                color: product.color,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                  'assets/icons/add_to_cart.svg',
                  color: product.color),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding),
              child: Container(
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(18),
                ),
                height: 50,
                child: TextButton(
                  child: Text(
                    'Buy Now'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}