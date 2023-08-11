import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

class CustomText extends StatelessWidget {
  final String categoryTitle;
  final String buttonText;
  final VoidCallback onPressed;
  const CustomText(
      {super.key,
      required this.categoryTitle,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
