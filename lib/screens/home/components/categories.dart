import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return buildCategory(index);
          },
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  color: selectedIndex == index ? kTextColor : kTextLightColor,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 30,
              height: 2,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
