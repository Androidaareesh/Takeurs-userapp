import 'package:flutter/material.dart';

class FrontBanner extends StatefulWidget {
  final String name;
  final String discount;
  final String image;
  
  const FrontBanner({super.key, required this.name, required this.discount, required this.image});

  @override
  State<FrontBanner> createState() => _FrontBannerState();
}

class _FrontBannerState extends State<FrontBanner> {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 171,
                width: 341,
                decoration: BoxDecoration(
                  // image: const DecorationImage(
                  //   image: AssetImage("assets/svg_icons/Gift Coupon 3.png"),
                  //   fit: BoxFit.cover),
                  
                  gradient: const LinearGradient(
                    //begin: Alignment.topLeft,
                        ///end: Alignment(0.8, 1),
                        colors: [
                      Color(0xff1f005c),
                      Color(0xff5b0060),
                      Color(0xff870160),
                      Color(0xffac255e),
                      Color(0xffca485c),
                      Color(0xffe16b5c),
                      Color(0xfff39060),
                      Color(0xffffb56b),
                  ]
                  ),
                  borderRadius:BorderRadius.circular(20) 
                ),
                child:Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,
                      style: const TextStyle(fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(widget.discount,style: const TextStyle(fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                       const SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text("BUY NOW>>",style: TextStyle(fontSize: 20,
                        color: Colors.white),),
                      )
                    ],
                  ),
                ) ,
              )
            ],
          ),
          Positioned(
            left:180,
            top:15,
            right: 25,
            bottom: 18,
            child: Image.asset(widget.image,height: 180,width: 180,)),
        ],
      ),
    );
  }
}