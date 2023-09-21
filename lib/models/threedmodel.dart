import 'dart:ffi';

import 'package:flutter/material.dart';

class ThreeDModel extends StatefulWidget {
  final String text;
  final String image;
  const ThreeDModel({super.key, required this.text, required this.image});

  @override
  State<ThreeDModel> createState() => _ThreeDModelState();
}

class _ThreeDModelState extends State<ThreeDModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                   color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  height: 150,
                  width: 250,
                    decoration: BoxDecoration(
                   color:Colors.green,
                  borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                bottom:30,
                child: Image.asset(widget.image)),
                Positioned(
                  top: 150,
                  child: Container(
                  height: 50,
                  width: 300,
                  color: Colors.blue,
                  child:  Text(widget.text,
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.white
                  ),),
                ))
            ],
          ),
    ) ;
  }
}