import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child:
                SvgPicture.asset('assets/icons/heart.svg'),
          ),
        )
      ],
    );
  }
}