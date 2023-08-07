import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16,left: 8,right: 8),
        child: Column(
          children: [
            Image.asset("assets/svg_icons/01.jpg"),
            const Text("TAKEurs",style: TextStyle(fontSize: 24),),
            const SizedBox(
              height:50,
            ),
            SizedBox(
              width: 331,
              height: 56,
              child: CustomButton(
                borderRadius: 8,
                buttonclr: AppColors.primaryColor,
                buttontxt: 'Login',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute
                  (builder: (context)=>const LoginPage()));
                },
                textclr: AppColors.white,),
            ),
              const SizedBox(
              height: 20,
            ),
              SizedBox(
                width: 331,
                height: 56,
                child: CustomButton(
                borderRadius: 8,
                buttonclr: AppColors.white,
                buttontxt: 'Register',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                 },
                textclr: AppColors.black,),
              )
          ],
        ),
      ),
    );
  }
}