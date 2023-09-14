import 'dart:async';

import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/Screens/BottomNavigation.dart';

late String finaltoken;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavigation())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF5F0A87), Color(0xFFA4508B)]),
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logocolour.png",
                    height: 38,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        indent: 28,
                        endIndent: 10,
                        color: Colors.white,
                      )),
                      Text(
                        "OFFERS & DISCOUNTS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 3.0),
                      ),
                      Expanded(
                          child: Divider(
                        indent: 10,
                        endIndent: 28,
                        color: Colors.white,
                      ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
