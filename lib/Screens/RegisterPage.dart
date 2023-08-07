import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Screens/HomeScreen.dart';

import '../Materials/Custom_btn.dart';
import '../utlis_color/utlis_color.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello! Register to\n get started",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 330,
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Username ",
                    // label: const Text("Enter your  number"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 56,
                width: 330,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Email ",
                    // label: const Text("Enter your password"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 56,
                width: 330,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Mobile Number ",
                    // label: const Text("Enter your password"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Forgot Password? ",
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 330,
                child: CustomButton(
                  borderRadius: 8,
                  buttonclr: AppColors.primaryColor,
                  buttontxt: 'Register',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  textclr: AppColors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {}, child: const Text(" Login Now "))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}