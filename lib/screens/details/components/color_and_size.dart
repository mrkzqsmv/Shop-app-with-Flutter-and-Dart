import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                    isSelected: false,
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                    isSelected: false,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(children: [
              const TextSpan(
                  text: 'Size\n', style: TextStyle(color: kTextColor)),
              TextSpan(
                  text: '${product.size}',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
      ],
    );
  }
}
