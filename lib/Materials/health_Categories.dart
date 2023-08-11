import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/Custom_appbar.dart';
import 'package:takeurs_userapp/Models/health_categoty_model.dart';
import 'package:takeurs_userapp/Materials/constant.dart';

class HealthCategories extends StatefulWidget {
  const HealthCategories({super.key});

  @override
  State<HealthCategories> createState() => _HealthCategoriesState();
}

class _HealthCategoriesState extends State<HealthCategories> {
  final List<String> _brandNearbyList = [
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Health", context: (context)),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 16, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: _brandNearbyList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: grey,
                              child: Image.asset(_brandNearbyList[index]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Apollo\nHospital")
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Hospitals...",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: .84,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
                children: [
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                  CategoryCard(
                      image: 'assets/svg_icons/apollo.png',
                      title: "Apollo",
                      press: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
