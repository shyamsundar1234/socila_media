import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tafi/screens/home_screen/video_feed_screen.dart';
import 'package:tafi/utils/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        backgroundColor: Colors.black,
        primary: false,
        body: DefaultTabController(
          animationDuration: Duration(microseconds: 700),
          length: 2,
          child: Column(children: [
            24.height,
            Container(
              color: Colors.transparent,
              height: 50,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: appThemeColor,
                  tabs: [
                    Tab(
                      child: Text(
                        'Following',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'For You',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                children: [VideoFeedScreen(), VideoFeedScreen()],
              ),
            )
          ]),
        ));
  }


}
