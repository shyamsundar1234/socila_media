import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sizer/sizer.dart';
import 'package:tafi/utils/colors.dart';

class ProfessionalAccountScreen extends StatefulWidget {
  const ProfessionalAccountScreen({Key? key}) : super(key: key);

  @override
  State<ProfessionalAccountScreen> createState() =>
      _ProfessionalAccountScreenState();
}

class _ProfessionalAccountScreenState extends State<ProfessionalAccountScreen> {
  bool _isVisible = true;

  // int value = 0;
  bool positive = false;
  final List<String> _talentList = [
    "Artist",
    "Musician/band",
    "Digital Creator",
    "Beauty,cosmetic & personal Care",
    "photographer",
    "Dancer",
  ];
  String _selected = "Artist";
  int radioIndex = 0;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        //title: Text("Hi vinod",style: GoogleFonts.aBeeZee(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        50.height,
        Text(
          "What best describes you?",
          style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        10.height,
        Text(
          "Categories help people find accounts like yours.You can change this at any time.",
          textAlign: TextAlign.center,
        ),
        30.height,
        Visibility(
          visible: _isVisible,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Display on profile",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    fontSize: 15, fontWeight: FontWeight.w200),
              ),
              CustomAnimatedToggleSwitch<bool>(
                current: positive,
                values: [false, true],
                dif: 0.0,
                indicatorSize: Size.square(30.0),
                animationDuration: const Duration(milliseconds: 200),
                animationCurve: Curves.linear,
                onChanged: (b) => setState(() => positive = b),
                iconBuilder: (context, local, global) {
                  return const SizedBox();
                },
                defaultCursor: SystemMouseCursors.click,
                onTap: () => setState(() => positive = !positive),
                iconsTappable: false,
                wrapperBuilder: (context, global, child) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                          left: 10.0,
                          right: 10.0,
                          height: 20.0,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color.lerp(Colors.black26,
                                  Colors.blue.shade200, global.position),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50.0)),
                            ),
                          )),
                      child,
                    ],
                  );
                },
                foregroundIndicatorBuilder: (context, global) {
                  return SizedBox.fromSize(
                    size: global.indicatorSize,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.lerp(
                            Colors.white, Colors.blue, global.position),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 0.05,
                              blurRadius: 1.1,
                              offset: Offset(0.0, 0.8))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Text(
          "Suggested",
          style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Expanded(
            child: ListView(children: [
          //suggestedItem("cresygysg")
          RadioGroup<String>.builder(
            direction: Axis.vertical,
            groupValue: _selected,
            onChanged: (value) => setState(() {
              _selected = value!;
            }),
            spacebetween: 40,
            textStyle: secondaryTextStyle(color: Colors.black, size: 15),
            items: _talentList,
            itemBuilder: (item) => RadioButtonBuilder(
              item,
              textPosition: RadioButtonTextPosition.right,
            ),
            activeColor: appThemeColor,
            horizontalAlignment: MainAxisAlignment.spaceEvenly,
          )
        ]))
      ]),
    ));
  }
// suggestedItem(String title){
//   return Row(children: [
//     Text(title),
//     Radio(value: radioIndex, groupValue: selected, onChanged: (value){
//       setState(() {
//      selected = value;
//       });
//     })
//
//   ],);
// }
}
