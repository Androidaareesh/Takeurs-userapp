// ignore_for_file: unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/Widgets/BigOne.dart';
import 'package:takeurs_userapp/Widgets/OfferNearBy.dart';
import 'package:takeurs_userapp/Widgets/TopDeals.dart';
import 'package:takeurs_userapp/Widgets/TopOffers.dart';
import 'package:takeurs_userapp/Widgets/Upcoming.dart';
import 'package:takeurs_userapp/widgets/videoplayer.dart';
import '../../Widgets/Categories.dart';
import '../../Widgets/custom_row_text.dart';
import '../../models/frontbanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imagelist = [
    'assets/images/FB 01.jpg',
    'assets/images/FB 02.jpg',
    'assets/images/FB 03.jpg',
    'assets/images/FB 05.jpg',
  ];
  final CarouselController carouselController = CarouselController();
  String currentAddress = 'Current Location';
  late Position currentposition;

  Future _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Please enable Your Location Service');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(
          msg:
              'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      Placemark place = placemarks[0];

      setState(() {
        currentposition = position;
        currentAddress =
            "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }

  bool isVisible = true;
  int _colorIndex = 0;

  int _currentIndex = 0;
  final List _imageUrls = [
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
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _determinePosition();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Container(
                  height: 126,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      gradient: LinearGradient(colors: [
                        primaryColor,
                        Colors.deepPurpleAccent.withOpacity(0.9)
                      ])),
                ),
                Positioned(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Hello Aareesh",
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                Row(
                                  children: [
                                    Text(currentAddress,
                                        style: const TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12)),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: white,
                                      size: 12,
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.bell_fill,
                              size: 24,
                              color: white,
                            ),
                          ],
                        ),
                      ),
                      // Search Field
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20),
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextFormField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.search,
                                color: primaryColor,
                              ),
                              hintText: "Search products",
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(color: grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(color: grey)),
                            ),
                          ),
                        ),
                      ),
                      // FrontBanner
                      CarouselSlider(
                        items: imagelist.map((item) {
                          return Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "GET NOW",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }).toList(),
                        // imagelist
                        //     .map(
                        //       (item) => Image.asset(
                        //         item['imgpath'],
                        //         fit: BoxFit.cover,
                        //       ),
                        //     )
                        //     .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          height: 200.0,
                          viewportFraction: 0.9,
                          autoPlay: true,
                          enlargeCenterPage: true,
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
                          activeColor: primaryColor,
                          color: grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          size: const Size(
                              18.0, 4.0), // Adjust the size of the line here
                          activeSize: const Size(40.0,
                              4.0), // Adjust the size of the active line here
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      // ShopsByCategories
                      // Categories(),
                      // Visibility(
                      //     visible: isVisible,
                      //     // maintainAnimation: true,
                      //     // maintainSize: true,
                      //     // maintainState: true,
                      //     // maintainSemantics: true,
                      //     child: const HideCategory()),

                      // BestDealsInCity
                      Container(
                        height: 200,
                        color: primaryColor.withAlpha(8),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Divider(
                                    indent: 22,
                                    endIndent: 10,
                                    color: Colors.grey,
                                  )),
                                  Text(
                                    "BEST DEAL IN CITY",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        letterSpacing: 4.0),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Stack(
                                  children: [
                                    Card(
                                      elevation: 0,
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        "assets/images/BestDeal 01.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const Positioned(
                                        left: 20,
                                        top: 20,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Apple Watch\nSeries",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              "Go your future by\nusing apple watches",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Terms&conditions*",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 6,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // OffersNearBy
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                            indent: 22,
                            endIndent: 10,
                            color: Colors.grey,
                          )),
                          Text(
                            "OFFERS NEARBY",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                letterSpacing: 4.0),
                          ),
                          Expanded(
                              child: Divider(
                            indent: 10,
                            endIndent: 22,
                            color: Colors.grey,
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const OffersNearMe(),
                      const SizedBox(
                        height: 18,
                      ),
                      // BrandsNearBy
                      Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "BRANDS NEARBY",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    letterSpacing: 4.0),
                              ),
                              Expanded(
                                  child: Divider(
                                indent: 10,
                                endIndent: 22,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: _colorIndex == 0
                                            ? litPink.withAlpha(20)
                                            : grey.withAlpha(20),
                                        child: Image.asset(
                                            _brandNearbyList[index]),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  );
                                }),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      //TopDeals
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                            indent: 22,
                            endIndent: 10,
                            color: Colors.grey,
                          )),
                          Text(
                            "TOP DEALS",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                letterSpacing: 4.0),
                          ),
                          Expanded(
                              child: Divider(
                            indent: 10,
                            endIndent: 22,
                            color: Colors.grey,
                          ))
                        ],
                      ),

                      const TopDeals(),

                      //  Video

                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20, right: 20, bottom: 18),
                      //   child: Container(
                      //     width: double.infinity,
                      //     height: 400,
                      //     decoration: BoxDecoration(
                      //       color: primaryColor,
                      //       borderRadius: BorderRadius.circular(50),
                      //     ),
                      //     child: const VideoPlayerWidget(
                      //         videoUrl: 'https://youtu.be/9h2bKsJ7j_c'),
                      //   ),
                      // ),
                      // const BigOne(),

                      // TopOffers
                      // const Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Expanded(
                      //         child: Divider(
                      //       indent: 22,
                      //       endIndent: 10,
                      //       color: Colors.grey,
                      //     )),
                      //     Text(
                      //       "TOP OFFERS",
                      //       style: TextStyle(
                      //           color: Colors.grey,
                      //           fontSize: 16,
                      //           letterSpacing: 4.0),
                      //     ),
                      //     Expanded(
                      //         child: Divider(
                      //       indent: 10,
                      //       endIndent: 22,
                      //       color: Colors.grey,
                      //     ))
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // const TopOffers(),
                      // const SizedBox(
                      //   height: 18,
                      // ),
                      // UpcomingDeals
                      const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Divider(
                                indent: 22,
                                endIndent: 10,
                                color: Colors.grey,
                              )),
                              Text(
                                "UPCOMING DEALS",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    letterSpacing: 4.0),
                              ),
                              Expanded(
                                  child: Divider(
                                indent: 10,
                                endIndent: 22,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Upcoming(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
