import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tafi/screens/custom_screen/custom_screen.dart';
import 'package:tafi/screens/home_screen/home_screen.dart';
import 'package:tafi/screens/message/messages_screen.dart';
import 'package:tafi/screens/profile/profile_screen.dart';
import 'package:tafi/screens/search/search_screen.dart';
import 'package:tafi/service_locator.dart';
import 'package:tafi/utils/tik_tok_icons_icons.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setup();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

Color? selectedIconColor = Colors.red;

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const double CreateButtonWidth = 38.0;

  //final navigationKey = GlobalKey<CurvedNavigationBarState>();
  bool onPressed = false;
  int index = 0;
  final screens = [
    CustomScreen(),
    SearchScreen(),
    HomeScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: screens[index],
        bottomNavigationBar: ConvexAppBar(
            color: Colors.black,
            backgroundColor: Colors.white,
            activeColor: Colors.red.shade200,
            initialActiveIndex: 2,
            items: [
              TabItem(icon: Icon(Icons.camera_alt_outlined), title: 'Tafi'),
              TabItem(
                  icon: Icon(TikTokIcons.search, size: 20), title: 'Search'),
              TabItem(
                icon: Icon(TikTokIcons.home, size: 20),
                title: 'Home',
              ),
              TabItem(
                  icon: Icon(TikTokIcons.messages, size: 20), title: 'Message'),
              TabItem(
                  icon: Icon(TikTokIcons.profile, size: 20), title: 'Profile'),
            ],
            top: -20,
            onTap: (index) => setState(
                  () {
                    this.index = index;
                  },
                )));
  }
}
