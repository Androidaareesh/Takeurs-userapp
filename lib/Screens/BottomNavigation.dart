import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/Screens/MainPages/Favourites.dart';
import 'package:takeurs_userapp/Screens/MainPages/HomeScreen.dart';
import 'package:takeurs_userapp/Screens/MainPages/ProfileScreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 64,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const HomeScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.cube_box_fill,
                        color: currentTab == 0 ? primaryColor : Colors.grey),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: currentTab == 0 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const Favourites();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite,
                        color: currentTab == 1 ? primaryColor : Colors.grey),
                    Text(
                      "Favourites",
                      style: TextStyle(
                          color: currentTab == 1 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const Settings();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.person_fill,
                        color: currentTab == 2 ? primaryColor : Colors.grey),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: currentTab == 2 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
