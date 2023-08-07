import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/Custom_btn.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: AppColors.white,
      ),
       body:  Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "OTP Verification",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Enter the verification code we just sent on your email address.",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.grey,
              fontWeight: FontWeight.w400
            ),),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 70,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
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
                            borderRadius: BorderRadius.circular(20)),
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
                            borderRadius: BorderRadius.circular(20)),
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
                            borderRadius: BorderRadius.circular(20)),
                        // label: const Text("Enter your password"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(borderRadius: 8,
             buttonclr: AppColors.primaryColor,
              buttontxt: "Verify", onTap: (){}, textclr: AppColors.white),
              const SizedBox(
              height: 40,
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
    );
  }
}