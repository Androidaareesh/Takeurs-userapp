import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../utlis_color/utlis_color.dart';

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
    return  Column(
      children: [
        CarouselSlider(
          items: _imageUrls.map((url) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 107.0,
            viewportFraction: 1,
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