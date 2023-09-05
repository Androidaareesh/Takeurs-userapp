import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

class TopDeals extends StatefulWidget {
  const TopDeals({super.key});

  @override
  State<TopDeals> createState() => _TopDealsState();
}

class _TopDealsState extends State<TopDeals> {
  int _currentIndex = 0;
  final List<String> _imageUrls = [
    'assets/svg_icons/megaone.png',
    'assets/svg_icons/megatwo.png',
    'assets/svg_icons/megaone.png',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _imageUrls.map((url) {
        return Container(
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(8)),
          child:Container(
            height: 300,
            width: 300,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 245, 228, 71)
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("MEGA",
                      style: TextStyle(
                        color: Color.fromARGB(255, 169, 103, 125),
                         fontSize: 35,
                       fontWeight: FontWeight.bold),
                    ),
                 Text("SALE",style: TextStyle(
                  color: Color.fromARGB(255, 21, 132, 222),
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                 ),)
            ]),
          )
          // Image.asset(
          //   url,
          //   fit: BoxFit.fill,
          // ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 108.0,
        viewportFraction: 0.8,
        autoPlay: true,
        enlargeCenterPage: false,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
