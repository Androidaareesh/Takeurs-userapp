// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'constant.dart';

class CustomButton extends StatelessWidget {
  void Function() onTap;
  Color buttonclr;
  double borderRadius;
  String buttontxt;
  Color textclr;

  CustomButton({
    required this.borderRadius,
    required this.buttonclr,
    required this.buttontxt,
    required this.onTap,
    required this.textclr,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: buttonclr,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: primaryColor)),
        child: Center(
          child: Text(
            buttontxt,
            style: TextStyle(color: textclr, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class ButtonTextFont {}

class AppTextStyle {}
