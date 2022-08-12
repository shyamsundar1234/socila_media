import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          18.height,
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.clear_outlined, size: 29),
                Text(
                  "My Profile",
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.done,
                  size: 29,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
