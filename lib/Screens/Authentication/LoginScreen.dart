import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Screens/Authentication/OTP.dart';
import 'package:takeurs_userapp/Screens/BottomNavigation.dart';
import 'package:takeurs_userapp/Screens/MainPages/HomeScreen.dart';
import 'package:takeurs_userapp/Screens/Authentication/RegisterPage.dart';
import 'package:takeurs_userapp/Screens/WelcomPage.dart';

import '../../Materials/CustomButton.dart';
import '../../Materials/constant.dart';

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
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 26),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomePage()));
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded))
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              const Row(
                children: [
                  Text(
                    "Welcome back! Glad\nto see you, Again!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 54,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Enter your  number ",
                    // label: const Text("Enter your  number"),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                borderRadius: 8,
                buttonclr: primaryColor,
                buttontxt: 'Send OTP',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const OTP()));
                },
                textclr: white,
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account? "),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(color: primaryColor),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
