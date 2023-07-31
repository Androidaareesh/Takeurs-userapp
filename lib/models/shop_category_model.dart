// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget {
  final String categoryName;
  final String categoryIcon;
  final press;

  const ShopCategory(
      {super.key,
      required this.categoryName,
      required this.categoryIcon,
      this.press});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: press,
        child: Column(
          children: [
            Image.asset(categoryIcon),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
