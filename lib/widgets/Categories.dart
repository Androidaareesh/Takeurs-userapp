// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../Materials/health_Categories.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<Map<String, dynamic>> savedProducts = [
    {
      "img": "assets/svg_icons/heartbeat.png",
      "itemName": "Health",
    },
    {
      "img": "assets/svg_icons/spa.png",
      "itemName": "Spa",
    },
    {
      "img": "assets/svg_icons/grocery.png",
      "itemName": "Groceries",
    },
    {
      "img": "assets/svg_icons/supermarket.png",
      "itemName": "Super\nMarket",
    },
    {
      "img": "assets/svg_icons/computer-chip.png",
      "itemName": "Hardware",
    },
    {
      "img": "assets/svg_icons/cutlery.png",
      "itemName": "Restaurants",
    },
    {
      "img": "assets/svg_icons/carrot.png",
      "itemName": "Green Fresh",
    },
    {
      "img": "assets/svg_icons/saloon.png",
      "itemName": "Saloon",
    },
    {
      "img": "assets/svg_icons/gold.png",
      "itemName": "Jewellary",
    },
    {
      "img": "assets/svg_icons/bakery.png",
      "itemName": "Bakery",
    },
    {
      "img": "assets/svg_icons/running.png",
      "itemName": "Sports / Gym",
    },
    {
      "img": "assets/svg_icons/load.png",
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
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Divider(
              indent: 22,
              endIndent: 10,
              color: Colors.grey,
            )),
            Text(
              "SHOPSBYCATEGORIES",
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, letterSpacing: 4.0),
            ),
            Expanded(
                child: Divider(
              indent: 10,
              endIndent: 22,
              color: Colors.grey,
            ))
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        GridView.builder(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HealthCategories())));
                  },
                  child: Column(
                    children: [
                      Flexible(
                          child: Image.asset(
                        savedProducts[index]["img"],
                        scale: 1.1,
                      )),
                      const SizedBox(
                        height: 8,
                      ),
                      Flexible(
                          child: Text(
                        savedProducts[index]["itemName"],
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}

class HideCategory extends StatefulWidget {
  const HideCategory({super.key});

  @override
  State<HideCategory> createState() => _HideCategoryState();
}

class _HideCategoryState extends State<HideCategory> {
  bool isVisible = true;
  List<Map<String, dynamic>> hideCategories = [
    {
      "img": "assets/svg_icons/comb.png",
      "itemName": "Saloon",
    },
    {
      "img": "assets/svg_icons/gold.png",
      "itemName": "Jewellary",
    },
    {
      "img": "assets/svg_icons/cake.png",
      "itemName": "Bakery",
    },
    {
      "img": "assets/svg_icons/gym.png",
      "itemName": "Sports / Gym",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: hideCategories.length,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HealthCategories())));
              },
              child: Visibility(
                visible: isVisible,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: Column(
                  children: [
                    Flexible(child: Image.asset(hideCategories[index]["img"])),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                        child: Text(
                      hideCategories[index]["itemName"],
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
