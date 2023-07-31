import 'package:flutter/material.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

class CustomText extends StatelessWidget {
   final String text;
  final String button;
  final press;
  const CustomText({super.key, required this.text, required this.button, this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: const TextStyle(fontSize: 24),),
        TextButton(onPressed: press,
         child:  Text(button,style:const TextStyle(color: AppColors.primaryColor,fontSize: 24),))
      ],
    );
  }
}