import 'package:flutter/material.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

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
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryTitle,
            style: const TextStyle(fontSize: 14.4, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
