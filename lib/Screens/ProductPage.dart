import 'package:flutter/material.dart';

import 'Favourites.dart';


class ProductPage extends StatefulWidget {
  final Product product ;
  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 50),
          child: Column(
            children: [
              Text("product.productname"),
             const SizedBox(
                height: 30,
              ),
              Text("product.price"),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/svg_icons/strawberry.png"),
              const SizedBox(
                height: 40,
              ),

              ElevatedButton(style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 40)
              ),onPressed: (){}, child: const Text("Get Directions",style: TextStyle(fontSize: 24),))
              
            ],
          ),
        ),
      ),
    );
  }
}