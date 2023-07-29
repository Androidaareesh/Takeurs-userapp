import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
            ],
          ),
const SizedBox(
            height: 24,
          ),
          // second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
            ],
          ),
const SizedBox(
            height: 24,
          ),
          // third  row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/svg_icons/health.svg"),
                  const Text("Health")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
