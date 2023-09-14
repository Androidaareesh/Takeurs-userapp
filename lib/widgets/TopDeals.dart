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
  final List _imageUrls = [
    {
      "img": "assets/images/Topdeals 01.png",
      "pngimg": "assets/images/cake.png",
      "title": "Cup Cakes",
      "discription": "2 cakes for couples",
    },
    {
      "img": "assets/images/Topdeals 02.png",
      "pngimg": "assets/images/smarthome.png",
      "title": "Home Appliance",
      "discription": "Smarthome systems",
    },
    {
      "img": "assets/images/Topdeals 03.png",
      "pngimg": "assets/svg_icons/Nikewatch.png",
      "title": "Nike watches",
      "discription": "Booooooooooooooom",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _imageUrls.map((url) {
        return Stack(
          children: [
            Card(
              elevation: 0,
              color: Colors.transparent,
              child: Image.asset(
                url['img'],
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                left: 20,
                top: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          url['title'],
                          style: const TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          url['discription'],
                          style: const TextStyle(
                              color: white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 100,
                        child: Image.asset(
                          url['pngimg'],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        );
      }).toList(),
      options:
          CarouselOptions(viewportFraction: 0.8, autoPlay: true, height: 140),
    );
  }
}
