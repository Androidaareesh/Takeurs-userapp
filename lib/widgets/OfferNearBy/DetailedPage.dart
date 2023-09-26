import 'package:flutter/material.dart';

import '../../Screens/MainPages/Favourites.dart';



class DetailedOffer extends StatefulWidget {
  const DetailedOffer({super.key});

  @override
  State<DetailedOffer> createState() => _DetailedOfferState();
}

class _DetailedOfferState extends State<DetailedOffer> {
  List<Product> products = [
    Product(
        image: 'assets/svg_icons/briyani.jpg',
        price: '170 ',
        productname: '1KG'),
    Product(
        image: 'assets/svg_icons/briyani.jpg',
        price: '200 ',
        productname: '2KG'),
    Product(
        image: 'assets/svg_icons/briyani.jpg',
        price: '250',
        productname: '2.5KG')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 190,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(image:AssetImage("assets/svg_icons/briyani.jpg")
                ,fit: BoxFit.cover),
              color: Colors.deepPurple
              ),
              child: const Padding(
                padding: EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Thalappa Katti",style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Best Briyani with hygine quality",
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                )
              ],
            ),
            const DefaultTabController(
              length: 4,
               child: Column(
                 children:[ TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                  Tab(
                    text: "Menu",
                    ),
                  Tab(
                    text: "Offer",
                      ),
                    Tab(
                    text: "Review",
                      ),
                    Tab(
                        text: "Info",
                      ),
                           ],
                           ),
                           ]
               ),
            ),
            const SizedBox(
              height: 20,
            ),
             Flexible(
               child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(product.image),
                            fit: BoxFit.cover),
                            color: Colors.grey.shade200,
                          ),
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                          decoration: BoxDecoration(
                                             // color: white,
                                             color: Colors.grey.shade200
                                            ),
                                          
                                          child: Image.asset(product.image)),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.productname,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Row(
                                          children: [
                                            Text(product.price,
                                            style: TextStyle(
                                              color: Colors.white
                                            ),),
                                            const Icon(Icons.currency_rupee,size: 18,)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
             ),
          ],
        ),
      ),
    );
  }
}