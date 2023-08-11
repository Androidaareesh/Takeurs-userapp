import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/CustomButton.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

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
          padding: const EdgeInsets.only(left: 22, right: 22, top: 30),
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
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "OTP Verification",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter the verification code we just sent on your email address.",
                style: TextStyle(
                    fontSize: 16, color: grey, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
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
              const SizedBox(
                height: 55,
              ),
              CustomButton(
                  borderRadius: 8,
                  buttonclr: primaryColor,
                  buttontxt: "Verify",
                  onTap: () {},
                  textclr: white),
              const SizedBox(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Didn’t received code?"),
                  TextButton(onPressed: () {}, child: const Text("  Resend "))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
