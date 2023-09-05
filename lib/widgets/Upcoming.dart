import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../Materials/constant.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  int _currentIndex = 0;
  final List<String> _imageUrls = [
    'assets/svg_icons/father.png',
    'assets/svg_icons/father.png',
    'assets/svg_icons/father.png',
    'assets/svg_icons/father.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imageUrls.map((url) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(8)),
                child: Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 245, 228, 71)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "FATHERS",
                            style: TextStyle(
                                color: Color.fromARGB(255, 169, 103, 125),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "DAY",
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 132, 222),
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SALE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 132, 222),
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  )
                //  Image.asset(
                //   url,
                //   fit: BoxFit.fill,
                // ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 0.8,
            autoPlay: true,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
