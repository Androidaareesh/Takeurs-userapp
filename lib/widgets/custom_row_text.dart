import 'package:flutter/material.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

class CustomText extends StatelessWidget {
  
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("categories"),
        TextButton(onPressed: (){},
         child: const Text("See All",style: TextStyle(color: AppColors.primaryColor),))
      ],
    );
  }
}