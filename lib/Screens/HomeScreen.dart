// ignore_for_file: unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takeurs_userapp/widgets/BigOne.dart';
import 'package:takeurs_userapp/widgets/OfferNearMe.dart';
import 'package:takeurs_userapp/widgets/TopDeals.dart';
import 'package:takeurs_userapp/widgets/TopOffers.dart';
import 'package:takeurs_userapp/widgets/Upcoming.dart';
import '../utlis_color/utlis_color.dart';
import '../widgets/Categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _colorIndex = 0;

  int _currentIndex = 0;
  final List<String> _imageUrls = [
    'assets/svg_icons/image 9.png',
    'assets/svg_icons/image 9.png',
    'assets/svg_icons/image 9.png',
    'assets/svg_icons/image 9.png',
  ];

  final List<String> _brandNearbyList = [
    'assets/svg_icons/image 14.png',
    'assets/svg_icons/image 15.png',
    'assets/svg_icons/image 16.png',
    'assets/svg_icons/image 17.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg_icons/app_icon.svg"),
            const SizedBox(
              width: 4,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Take",
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "urs",
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.normal)),
            ]))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                cursorColor: AppColors.primaryColor,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: AppColors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  hintText: "Search Coupon or product",
                  hintStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: AppColors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: AppColors.grey)),
                ),
              ),
            ),

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
                height: 200.0,
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
            const SizedBox(
              height: 10,
            ),
            DotsIndicator(
              dotsCount: _imageUrls.length,
              position: _currentIndex,
              decorator: DotsDecorator(
                spacing: const EdgeInsets.all(2),
                activeColor: AppColors.primaryColor,
                color: AppColors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                size: const Size(22.0, 4.0), // Adjust the size of the line here
                activeSize: const Size(
                    48.0, 4.0), // Adjust the size of the active line here
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            // code for category area
            const Text("Shops by Categories", style: TextStyle(fontSize: 24)),
            const SizedBox(
              height: 24,
            ),
        //  const Categories(),
            
            //best deals
            const SizedBox(
              height: 24,
            ),

            // best deals
            Container(
              color: AppColors.white,
              child: Column(children: [
                const Text(
                  "Best Deals in city ",
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8.0, left: 14, right: 14, top: 10),
                  child: Card(
                    elevation: 2,
                    shadowColor: Colors.pinkAccent,
                    surfaceTintColor: Colors.pink,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/svg_icons/bestdeal.png",
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 8,
            ),

            // offers near me
            const Text(
              "Offers nearby",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 8,
            ),
            const OffersNearMe(),
            const SizedBox(
              height: 24,
            ),
            // brands near by
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Container(
                color: AppColors.white,
                child: Column(
                  children: [
                    const Text(
                      "Brands nearby",
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _brandNearbyList.length,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: _colorIndex == 0
                                      ? AppColors.litPink.withAlpha(40)
                                      : AppColors.litPurple.withAlpha(20),
                                  child: Image.asset(_brandNearbyList[index]),
                                ),
                                const SizedBox(
                                  width: 12,
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            //top deals
            Container(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              color: AppColors.grey,
              child: const Column(
                children: [
                  Text("Top Deals", style: TextStyle(fontSize: 24)),
                  SizedBox(
                    height: 8,
                  ),
                  TopDeals(),

                  // top offers
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text("Top Offers", style: TextStyle(fontSize: 24)),
            const SizedBox(
              height: 12,
            ),
            const TopOffers(),
            const SizedBox(
              height: 14,
            ),
            const BigOne(),
            const SizedBox(
              height: 14,
            ),
            Container(
              color: Colors.pink.shade50,
              child: const Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text("Upcoming Deals", style: TextStyle(fontSize: 24)),
                  SizedBox(
                    height: 12,
                  ),
                  Upcoming(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
