import 'package:flutter/material.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

PreferredSize customAppBar({
  required String title,
  required BuildContext context,
}) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          title,
          style: const TextStyle(
              color: AppColors.white,
              fontSize: 18.6,
              fontWeight: FontWeight.bold),
        ),
      ));
}
