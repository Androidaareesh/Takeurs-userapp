import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

PreferredSize customAppBar({
  required String title,
  required BuildContext context,
}) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          title,
          style: const TextStyle(
              color: white, fontSize: 18.6, fontWeight: FontWeight.bold),
        ),
      ));
}
