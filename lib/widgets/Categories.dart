import 'package:flutter/material.dart';
import 'package:takeurs_userapp/models/shop_category_model.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          GridView.count(crossAxisCount: 4,
           childAspectRatio: .90,
           crossAxisSpacing: 20,
           mainAxisSpacing: 20,
          children:  [
            ShopCategory(categoryIcon: 'assets/svg_icons/health.svg', categoryName: 'health',press: (){},),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            ),
                 ShopCategory(
              categoryIcon: 'assets/svg_icons/health.svg',
              categoryName: 'health',
              press: () {},
            )
          ],)
        ],
    );
  }
}