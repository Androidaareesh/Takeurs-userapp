import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/svg_icons/health.svg"),
                    const Text("Health")
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset("assets/svg_icons/spa.png"),
                    const Text("Spa")
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset("assets/svg_icons/milk.png"),
                    const Text("Groceries")
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset("assets/svg_icons/shop.png"),
                    const Text("Super Market")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // second row
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("assets/svg_icons/chip.png"),
                    const Text("Hardware")
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset("assets/svg_icons/food.png"),
                    const Text("Restaurants")
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset("assets/svg_icons/carrot.png"),
                    const Text("Green Fresh")
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset("assets/svg_icons/comb.png"),
                    const Text("Saloon")
                  ],
                ),
              ],
            ),
          )]
    );
  }
}

