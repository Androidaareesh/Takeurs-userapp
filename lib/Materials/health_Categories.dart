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
    'assets/svg_icons/chennai.png',
    'assets/svg_icons/kauvery.png',
    'assets/svg_icons/parvathy.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
    'assets/svg_icons/apollo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Health", context: (context)),
      body: Column(
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
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: Image.asset(_brandNearbyList[index]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Hospitals")
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products",
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.list_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.grid_view),
                
                  ],
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: .90,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              children: [
                CategoryCard(
                    image: 'assets/svg_icons/equipment.png',
                    title: " Pharmaceutical\n drug",
                    press: () {}),
                CategoryCard(
                    image: 'assets/svg_icons/Scope.png',
                    title: "SethoScope",
                    press: () {}),
                CategoryCard(
                    image: 'assets/svg_icons/Scope.png',
                    title: "SethoScope",
                    press: () {}),
                CategoryCard(
                    image: 'assets/svg_icons/microscope.png',
                    title: "MicroScope",
                    press: () {}),
               CategoryCard(
                    image: 'assets/svg_icons/equipment.png',
                    title: " Pharmaceutical\n drug",
                    press: () {}),
                CategoryCard(
                    image: 'assets/svg_icons/Scope.png',
                    title: "SethoScope",
                    press: () {}),
                CategoryCard(
                    image: 'assets/svg_icons/Scope.png',
                    title: "SethoScope",
                    press: () {}),
                CategoryCard(
                    image: 'assets/svg_icons/microscope.png',
                    title: "MicroScope",
                    press: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
