import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tafi/screens/custom_screen/custom_screen.dart';
import 'package:tafi/screens/home_screen/home_screen.dart';
import 'package:tafi/screens/message/messages_screen.dart';
import 'package:tafi/screens/profile/profile_screen.dart';
import 'package:tafi/screens/search/search_screen.dart';
import 'package:tafi/service_locator.dart';
import 'package:tafi/utils/colors.dart';

void main() {
  setup();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

// Color? selectedIconColor = Colors.red;

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  //final navigationKey = GlobalKey<CurvedNavigationBarState>();
  bool onPressed = false;
  int index = 0;
  final screens = [
    HomeScreen(),
    SearchScreen(),
    CustomScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];
  List<PersistentBottomNavBarItem> _navBarsItems = [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home_outlined),
      title: ("Home"),
      activeColorPrimary: appThemeColor,
      inactiveColorPrimary: Colors.white38,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.search),
      title: ("Search"),
      activeColorPrimary: appThemeColor,
      inactiveColorPrimary: Colors.white38,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.camera_alt_outlined),
      title: ("Tafi"),
      activeColorPrimary: appThemeColor,
      inactiveColorPrimary: Colors.white38,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.message_outlined),
      title: ("Message"),
      activeColorPrimary: appThemeColor,
      inactiveColorPrimary: Colors.white38,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.person_outline),
      title: ("Account"),
      activeColorPrimary: appThemeColor,
      inactiveColorPrimary: Colors.white38,
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        // extendBody: true,
        body: screens[index],
        bottomNavigationBar: PersistentTabView(
          context,
          backgroundColor: Colors.transparent,
          itemAnimationProperties:
              ItemAnimationProperties(duration: Duration(milliseconds: 500)),
          navBarHeight: 60,
          navBarStyle: NavBarStyle.style9,
          screens: screens,
          items: _navBarsItems,
        ));
  }
}
