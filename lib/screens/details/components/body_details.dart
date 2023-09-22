// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/add_to_cart.dart';
import 'package:shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/screens/details/components/counter_with_fav_button.dart';
import 'package:shop_app/screens/details/components/description.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

class BodyDetails extends StatelessWidget {
  final Product product;
  const BodyDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: size.height * 0.12, left: kDefaultPadding),
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Description(product: product),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        const CounterWithFavButton(),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        AddToCart(product: product),
                      ],
                    ),
                  ),
                  ProductTitleWIthImage(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
