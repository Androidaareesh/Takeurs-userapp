import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Screens/BottomNavigation.dart';
import 'package:takeurs_userapp/Screens/HomeScreen.dart';
import 'package:takeurs_userapp/Screens/RegisterPage.dart';
import 'package:takeurs_userapp/Screens/WelcomPage.dart';

import '../Materials/Custom_btn.dart';
import '../utlis_color/utlis_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                        spreadRadius: 1,
                        color: Colors.grey.shade600,
                      ),
                    ]),
                child: IconButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomePage()));
                    }, icon: const Icon(Icons.arrow_back_ios)),
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "Welcome back! Glad\nto see you, Again!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  hintText: "Enter your  number ",
                  // label: const Text("Enter your  number"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  hintText: "Enter your password ",
                  // label: const Text("Enter your password"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                  ),
                ],
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
                          builder: (context) => const BottomNavigation()));
                },
                textclr: AppColors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Don’t have an account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const RegisterPage()));
                      }, child: const Text("Register Now"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
