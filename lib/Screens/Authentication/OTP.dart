import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/CustomButton.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/Screens/Authentication/LoginScreen.dart';

import '../WelcomPage.dart';
import 'RegisterPage.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only( top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 22),
                 child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Icon(Icons.arrow_back_ios_new_rounded))
                  ],
                             ),
               ),
              const SizedBox(
                height: 38,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "OTP Verification",
                  style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Enter the verification code we just sent on your email address.",
                  style: TextStyle(
                      fontSize: 16, color: grey, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left:36,right: 22),
                child: Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          // label: const Text("Enter your password"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          // label: const Text("Enter your password"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          // label: const Text("Enter your password"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          // label: const Text("Enter your password"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: CustomButton(
                    borderRadius: 8,
                    buttonclr: primaryColor,
                    buttontxt: "Verify",
                    onTap: () {},
                    textclr: white),
              ),
              const SizedBox(
                height: 300,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Didn’t received code?  "),
                      const SizedBox(
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
                          child: const Text(
                            "Resend",
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
