import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:takeurs_userapp/Screens/Authentication/RegisterPage.dart';
import 'package:takeurs_userapp/Screens/Authentication/LoginScreen.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import '../Materials/CustomButton.dart';
import '../Materials/constant.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  "assets/svg_icons/01.jpg",
                  height: 380,
                ),
              ),
              const Text(
                "TAKE YOURS",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                borderRadius: 8,
                buttonclr: primaryColor,
                buttontxt: 'Login',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                textclr: white,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                borderRadius: 8,
                buttonclr: white,
                buttontxt: 'Register',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                textclr: primaryColor,
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
