import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

class OffersNearMe extends StatefulWidget {
  const OffersNearMe({super.key});

  @override
  State<OffersNearMe> createState() => _OffersNearMeState();
}

class _OffersNearMeState extends State<OffersNearMe> {
  int _currentIndex = 0;
  final List<String> _imageUrls = [
    'assets/svg_icons/thalapa.png',
    'assets/svg_icons/dominos.png',
    'assets/svg_icons/fastfood.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imageUrls.map((url) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 0.5,
            autoPlay: false,
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
