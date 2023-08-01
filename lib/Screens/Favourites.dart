import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/custom_appbar.dart';

import 'Favourites.dart';
import 'ProductPage.dart';


class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  // ignore: non_constant_identifier_names
  List <Product> products = [
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
        itemBuilder: (context,index){
          final product = products[index];
          return Card(
        child:ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(product.image),
          ),
          title:Text(product.productname) ,
          subtitle: Text(product.price) ,
          trailing: const Icon(Icons.arrow_forward),
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage(product: product,)));
          },
        ) ,
         );
        }),
    );
  }
}

class Product{
  late final String productname;
  late final String price;
  late final String image;
  
  // ignore: non_constant_identifier_names
   Product ({
    required this.productname,
    required this.price,
    required this.image
  });
}
