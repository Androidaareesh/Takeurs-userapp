import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Screens/HomeScreen.dart';
import 'package:takeurs_userapp/Screens/WelcomPage.dart';

import '../Materials/Custom_btn.dart';
import '../utlis_color/utlis_color.dart';
import 'login.dart';



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
          padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
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
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "Hello! Register to\nget started",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height:32,
              ),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Username ",
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
                      hintText: "Email ",
                      // label: const Text("Enter your password"),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Mobile Number ",
                      // label: const Text("Enter your password"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height:30,
              ),
              
              
              CustomButton(
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
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      }, child: const Text(" Login Now "))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}