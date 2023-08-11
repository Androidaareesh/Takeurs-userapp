import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

import '../Materials/CustomButton.dart';
import '../Materials/Custom_appbar.dart';
import 'MainPages/Favourites.dart';

class ProductPage extends StatefulWidget {
  final Product product;
  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "Product",
        context: context,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Strawberry",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "50",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.currency_rupee)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/svg_icons/strawberry.png",
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 40,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Descriptions",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "A strawberry is both a low-growing, flowering plant and also the name of the fruit that it produces. Strawberries are soft, sweet, bright red berries. They're also delicious. Strawberries have tiny edible seeds, which grow all over their surface.",
                    textAlign: TextAlign.start,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                borderRadius: 50,
                buttonclr: primaryColor,
                buttontxt: 'Get Direction',
                onTap: () {},
                textclr: white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
