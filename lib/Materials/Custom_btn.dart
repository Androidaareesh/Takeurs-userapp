// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'constant.dart';


class CustomButton extends StatefulWidget {
  CustomButton({
    required this.borderRadius,
    required this.buttonclr,
    required this.buttontxt,
    required this.onTap,
    required this.textclr,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  Color buttonclr;
  double borderRadius;
  String buttontxt;
  Color textclr;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: widget.buttonclr,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(color: TPrimary)),
            
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  widget.buttontxt,
                  style: TextStyle(
                      color: widget.textclr, fontSize: 16),
                ),
        ),
      ),
      onTap: () {},
    );
  }
}

class ButtonTextFont {
}

class AppTextStyle {
}
