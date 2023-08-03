// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../Screens/health_Categories.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<Map<String, dynamic>> savedProducts = [
    {
      "img": "assets/svg_icons/health11.png",
      "itemName": "Health",
    },
    {
      "img": "assets/svg_icons/spa.png",
      "itemName": "Spa",
    },
    {
      "img": "assets/svg_icons/milk.png",
      "itemName": "Groceries",
    },
    {
      "img": "assets/svg_icons/shop.png",
      "itemName": "Super Market",
    },
    {
      "img": "assets/svg_icons/chip.png",
      "itemName": "Hardware",
    },
    {
      "img": "assets/svg_icons/food.png",
      "itemName": "Restaurants",
    },
    {
      "img": "assets/svg_icons/carrot.png",
      "itemName": "Green Fresh",
    },
    // {
    //   "img": "assets/svg_icons/comb.png",
    //   "itemName": "Saloon",
    // },
    // {
    //   "img": "assets/svg_icons/gold.png",
    //   "itemName": "Jewellary",
    // },
    // {
    //   "img": "assets/svg_icons/cake.png",
    //   "itemName": "Bakery",
    // },
    // {
    //   "img": "assets/svg_icons/gym.png",
    //   "itemName": "Sports / Gym",
    // },
    {
      "img": "assets/svg_icons/more.png",
      "itemName": "More",
    },
  ];

  // int _getCrossAxisCount(BuildContext context) {
  //   double screenWidth = MediaQuery.of(context).size.width;
  //   int crossAxisCount = 2;
  //   if (screenWidth > 600) {
  //     crossAxisCount = 4;
  //   } else if (screenWidth > 400) {
  //     crossAxisCount = 3;
  //   }
  //   return crossAxisCount;
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: savedProducts.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context)=>const HealthCategories())));
              },
              child: Column(
                children: [
                  Flexible(child: Image.asset(savedProducts[index]["img"])),
                  const SizedBox(
                    height: 8,
                  ),
                  Flexible(
                      child: Text(
                    savedProducts[index]["itemName"],
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
          );
        });
  }
}
