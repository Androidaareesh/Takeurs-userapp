import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

class BigOne extends StatefulWidget {
  const BigOne({super.key});

  @override
  State<BigOne> createState() => _BigOneState();
}

class _BigOneState extends State<BigOne> {
  int _currentIndex = 0;
  final List<String> _imageUrls = [
    'assets/svg_icons/bigone.png',
    'assets/svg_icons/bigone.png',
    'assets/svg_icons/bigone.png',
    'assets/svg_icons/bigone.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imageUrls.map((url) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                url,
                fit: BoxFit.fill,
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 320.0,
            viewportFraction: 0.88,
            autoPlay: true,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        DotsIndicator(
          dotsCount: _imageUrls.length,
          position: _currentIndex,
          decorator: DotsDecorator(
            spacing: const EdgeInsets.all(2),
            activeColor: primaryColor,
            color: grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
            ),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
            ),
            size: const Size(48.0, 4.0), // Adjust the size of the line here
            activeSize: const Size(
                48.0, 4.0), // Adjust the size of the active line here
          ),
        ),
      ],
    );
  }
}
