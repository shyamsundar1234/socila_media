import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tafi/global_component.dart';
import 'package:tafi/screens/feed_screen.dart';
import 'package:tafi/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color color = Colors.red;

  void initState() {
    var d = Duration(seconds:2);

    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return FeedScreen();
          },
        ),
            (route) => true,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showLogo(
                  1,
                  "T",
                  appDayColor,
                ),
                5.width,
                showLogo(3, "A", appThemeColor),
                5.width,
                showLogo(5, "F", appDayColor),
                5.width,
                showLogo(7, "I", appThemeColor)
              ],
            ),
            80.height,
            Image.asset("images/tafi1.png"),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Powered by ",style:GoogleFonts.aBeeZee(fontSize:9) ),
                  DefaultTextStyle(
                    style: GoogleFonts.abel(color: Colors.green,fontSize: 15),

                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('Ficuslot Team',),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  )
                ]).paddingTop(120)
          ],
        ),
      ),
    );
  }

  showLogo(int time,
      String text,
      Color bgColor,) {
    return TweenAnimationBuilder(
        curve: Curves.bounceOut,
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: time),
        builder: (context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(top: value * 200),
              child: child,
            ),
          );
        },
        child: singleLogoItem(
          text,
          bgColor,
        ));
  }
}


