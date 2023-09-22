// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/components/categories.dart';
import 'package:shop_app/screens/home/components/item_cart.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) {
                return ItemCart(
                  product: products[index],
                  press: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                );
              }),
        ))
      ],
    );
  }
}
