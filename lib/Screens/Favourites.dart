import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/custom_appbar.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

import 'Favourites.dart';
import 'ProductPage.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  // ignore: non_constant_identifier_names
  List<Product> products = [
    Product(
        image: 'assets/svg_icons/i perfume.png',
        price: '250',
        productname: 'Perfume'),
    Product(
        image: 'assets/svg_icons/strawberry.png',
        price: '250',
        productname: 'Strawberry'),
    Product(
        image: 'assets/svg_icons/Nikewatch.png',
        price: '250',
        productname: 'NikeWatch')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Favourites", context: context),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
             return 
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                 child: Container(
                  height: 100,
                  color: AppColors.grey,
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(product.image)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(product.productname,
                             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                            Text(product.price),
                          ],
                        ),
                       IconButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage(
                                      product: product,
                                    )));
                       }, icon: const Icon(Icons.arrow_forward))
                    ],
                   ),
                 ),
               ),
             );
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Card(
            //     child: SizedBox(
            //       height: 100,
            //       child: ListTile(
            //         leading: SizedBox(
            //           height: 50,
            //           width: 50,
            //           child: Image.asset(product.image)),
            //         title: Text(
            //           product.productname,
            //           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            //         ),
            //         subtitle: Text(product.price),
            //         trailing: const Icon(Icons.arrow_forward),
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => ProductPage(
            //                         product: product,
            //                       )));
            //         },
            //       ),
            //     ),
            //   ),
            // );
          }),
    );
  }
}

class Product {
  late final String productname;
  late final String price;
  late final String image;

  // ignore: non_constant_identifier_names
  Product(
      {required this.productname, required this.price, required this.image});
}
