// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body_details.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: BodyDetails(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/add_to_cart.svg',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
