import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utlis_color/utlis_color.dart';

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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.white, borderRadius: BorderRadius.circular(8)),
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
    );
  }
}