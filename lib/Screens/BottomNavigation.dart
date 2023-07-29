import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takeurs_userapp/Materials/constant.dart';
import 'package:takeurs_userapp/Screens/Favourites.dart';
import 'package:takeurs_userapp/Screens/HomeScreen.dart';
import 'package:takeurs_userapp/Screens/Settings.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  static List<Widget> _screen = <Widget>[
    HomeScreen(),
    Settings(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                            color: currentTab == 0 ? TPrimary : Colors.grey),
                        Text(
                          "Home",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.black : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Favourites();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,
                            color: currentTab == 1 ? TPrimary : Colors.grey),
                        Text(
                          "Favourites",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.black : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  MaterialButton(
                    focusElevation: 0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Settings();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings,
                            color: currentTab == 2 ? TPrimary : Colors.grey),
                        Text(
                          "Settings",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.black : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
