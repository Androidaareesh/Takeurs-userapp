import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/Screens/BottomNavigation.dart';
import 'package:takeurs_userapp/Screens/MainPages/HomeScreen.dart';
import 'package:takeurs_userapp/Screens/WelcomPage.dart';

import '../../Materials/CustomButton.dart';

import 'LoginScreen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const Text(
                "Hello! Register to\nget started",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  Container(
                    height: 54,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Username ",
                        // label: const Text("Enter your  number"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 54,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Email ",
                        // label: const Text("Enter your password"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 54,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Mobile Number ",
                        // label: const Text("Enter your password"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                borderRadius: 8,
                buttonclr: primaryColor,
                buttontxt: 'Register',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()));
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
                      const Text("Already have an account?"),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: Text(
                            "Login Now",
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
