import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/widgets/OfferNearBy/DetailedPage.dart';



class OffersNearMe extends StatefulWidget {
  const OffersNearMe({super.key});

  @override
  State<OffersNearMe> createState() => _OffersNearMeState();
}

class _OffersNearMeState extends State<OffersNearMe> {
  int _currentIndex = 0;
  final List<String> _imageUrls = [
    'assets/svg_icons/mcafe.jpg',
    'assets/svg_icons/fastfood.jpg',
    'assets/svg_icons/mcafe.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=>const DetailedOffer()));
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple
                ),
                child: Image.asset("assets/svg_icons/thalapa.png",
                fit: BoxFit.cover,),
              ),
            ),
            const SizedBox(width: 20,),
            Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.purple),
                 child: Image.asset(
              "assets/svg_icons/thalapa.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.purple),
                 child: Image.asset(
              "assets/svg_icons/thalapa.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.purple),
                 child: Image.asset(
              "assets/svg_icons/thalapa.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
    // return Column(
    //   children: [
    //     CarouselSlider(
    //       items: _imageUrls.map((url) {
    //         return Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 1.0),
    //           child: Container(
    //             decoration: BoxDecoration(
    //                 color: white, borderRadius: BorderRadius.circular(8)),
                
    //               child: 
    //               Image.asset(
    //                 url,
    //                 fit: BoxFit.cover,),
                
    //           ),
    //         );
    //       }).toList(),
    //       options: CarouselOptions(
    //         height: 200.0,
    //         viewportFraction: 0.9,
    //         autoPlay: false,
    //         enlargeCenterPage: false,
    //         onPageChanged: (index, reason) {
    //           setState(() {
    //             _currentIndex = index;
    //           });
    //         },
    //       ),
    //     ),
    //   ],
    // );
  }
}
