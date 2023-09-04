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
  String currentAddress = 'my address';
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
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/svg_icons/app_icon.svg",
              height: 28,
            ),
            const SizedBox(
              width: 6,
            ),
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
                            fontSize: 10)),
                    
                    IconButton(onPressed: (){
                       _determinePosition();
                    }, 
                    icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: white,
                        size: 10,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            CupertinoIcons.bell_fill,
            size: 25,
            color: white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // Search Field
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: SizedBox(
                height: 42,
                child: TextFormField(
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: primaryColor,
                    ),
                    hintText: "Search products",
                    hintStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
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
              items: _imageUrls.map((url) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          
                          color: white, borderRadius: BorderRadius.circular(8)),
                      child: const FrontBanner(
                        discount: '10% OFF',
                        name: 'Strawberry',
                        image: 'assets/svg_icons/strawberry.png',
                      )),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 0.9,
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
                activeColor: primaryColor,
                color: grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                size: const Size(18.0, 4.0), // Adjust the size of the line here
                activeSize: const Size(
                    40.0, 4.0), // Adjust the size of the active line here
              ),
            ),
            const SizedBox(
              height: 14,
            ),

            // ShopsByCategories
            CustomText(
              buttonText: 'See All',
              categoryTitle: 'Shops by Categories',
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            ),
            const SizedBox(
              height: 18,
            ),
            Categories(),
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
              color: primaryColor.withAlpha(16),
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  buttonText: '',
                  categoryTitle: 'Best Deal in city',
                  onPressed: () {},
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                   child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                    ),
                  
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Padding(
                         padding: EdgeInsets.only(top: 20,left: 20),
                         child: Row(children: [
                          Text("GET 20%",style: TextStyle(
                            color: Colors.white,fontSize: 29
                          ),),
                          Text("OFF",
                                style:
                                    TextStyle(color: Colors.white, 
                                    fontSize: 24),
                              )
                         ],),
                       ),
                       SizedBox(
                        height: 10,
                       ),
                       Padding(
                         padding: EdgeInsets.only(left: 20),
                         child: Text("For Today",style: TextStyle(
                          color: Colors.white,fontSize: 20
                         ),),
                       ),
                      ],
                    ),
                  // Card(
                  //   color: Colors.pink,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(18),
                  //     child: Image.asset(
                  //       "assets/svg_icons/bestdeal.png",
                  //     ),
                  //   ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 18,
            ),

            // OffersNearBy
            CustomText(
              buttonText: 'See all',
              categoryTitle: 'Offers Nearby',
              onPressed: () {},
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
                CustomText(
                  buttonText: 'See all',
                  categoryTitle: 'Brands Nearby',
                  onPressed: () {},
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: _colorIndex == 0
                                  ? litPink.withAlpha(20)
                                  : grey.withAlpha(20),
                              child: Image.asset(_brandNearbyList[index]),
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
            CustomText(
              buttonText: 'See all',
              categoryTitle: 'Top Deals',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const TopDeals(),
            const SizedBox(
              height: 18,
            ),

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
            CustomText(
              buttonText: 'See all',
              categoryTitle: 'Top Offers',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const TopOffers(),
            const SizedBox(
              height: 18,
            ),
            // UpcomingDeals
            Column(
              children: [
                CustomText(
                  buttonText: 'See all',
                  categoryTitle: 'Upcoming Deals',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                const Upcoming(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
