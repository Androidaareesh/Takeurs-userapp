import 'dart:collection';

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
  final List<String> upcomingbanner = [
    'assets/images/channels4_banner.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset("assets/images/channels4_banner.jpg"),
        )

        // CarouselSlider(
        //   items: upcomingbanner
        //       .map(
        //         (item) => Image.asset(
        //           item,
        //           fit: BoxFit.cover,
        //         ),
        //       )
        //       .toList(),
        //   options: CarouselOptions(
        //     height: 120.0,
        //     // viewportFraction: 0.1,
        //     // autoPlay: true,
        //     enlargeCenterPage: false,
        //     onPageChanged: (index, reason) {
        //       setState(() {
        //         _currentIndex = index;
        //       });
        //     },
        //   ),
        // ),
      ],
    );
  }
}
