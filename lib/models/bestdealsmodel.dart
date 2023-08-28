import 'package:flutter/material.dart';

class BestDealsModel extends StatefulWidget {
  final String offer;
  final String day;
  final String image;
  const BestDealsModel({super.key, required this.offer, required this.day, required this.image});

  @override
  State<BestDealsModel> createState() => _BestDealsModelState();
}

class _BestDealsModelState extends State<BestDealsModel> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold();
    //(
    //   body: Stack(
    //     children: [
    //       Column(
    //         children: [
    //           Container(
    //             height: 171,
    //             width: 341,
    //             decoration: BoxDecoration(
    //                 image: const DecorationImage(
    //                     image: AssetImage("assets/svg_icons/Gift Coupon 3.png"),
    //                     fit: BoxFit.cover),

    //                 borderRadius: BorderRadius.circular(20)),
    //             child: Padding(
    //               padding: const EdgeInsets.only(top: 10, left: 10),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     widget.offer,
    //                     style: const TextStyle(
    //                         fontSize: 30,
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                   // const SizedBox(
    //                   //   height: 10,
    //                   // ),
    //                   Text(
    //                     widget.day,
    //                     style: const TextStyle(
    //                         fontSize: 24,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white),
    //                   ),
                      
    //                 ],
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //       Positioned(
    //           left: 180,
    //           top: 15,
    //           right: 25,
    //           bottom: 18,
    //           child: Image.asset(
    //             widget.image,
    //             height: 180,
    //             width: 180,
    //           )),
    //     ],
    //   ),
    // );
  }
}