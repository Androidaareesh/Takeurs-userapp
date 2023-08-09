import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:takeurs_userapp/Screens/RegisterPage.dart';
import 'package:takeurs_userapp/Screens/login.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';
import '../Materials/Custom_btn.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/svg_icons/01.jpg",
                height: 460,
              ),
              const Text(
                "TAKEurs",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                borderRadius: 8,
                buttonclr: AppColors.primaryColor,
                buttontxt: 'Login',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                textclr: AppColors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                borderRadius: 8,
                buttonclr: AppColors.white,
                buttontxt: 'Register',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                textclr: AppColors.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
