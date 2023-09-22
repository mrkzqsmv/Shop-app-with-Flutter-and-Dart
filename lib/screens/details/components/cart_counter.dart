import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 40,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
            onPressed: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
            child: const Icon(Icons.remove), 
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(
          height: 32,
          width: 40,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }

  /*  SizedBox buildOutlineButton(Icon icon, Function press) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            )),
        onPressed: () {
          press;
        },
        child: icon,
      ),
    );
  } */
}
