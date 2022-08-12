import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tafi/global_component.dart';
import 'package:tafi/screens/profile/personal_information_screen.dart';
import 'package:tafi/screens/profile/professional_account_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final profileKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final userNameController = TextEditingController();
  final bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: profileKey,
            child: Column(
              children: [
                18.height,
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.black12))),
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
                20.height,
                CircleAvatar(
                    child: Image.asset(
                      "images/tafi1.png",
                    ),
                    radius: 50,
                    backgroundColor: Colors.red.shade50),
                20.height,
                InkWell(
                    child: Text(
                      "Change Profile Photo",
                      style: GoogleFonts.aBeeZee(),
                    ),
                    onTap: () {}),
                editProfileTextFormField(labelText: "Name"),
                editProfileTextFormField(labelText: "UserName"),
                editProfileTextFormField(labelText: "Bio"),
                20.height,
                InkWell(
                    child: Text("Switch To Professional Account"),
                    onTap: () {
                      ProfessionalAccountScreen().launch(context);
                    }),10.height,
                Divider(endIndent: 30,indent: 30,),
                10.height,
                InkWell(
                    child: Text("Personal Information setting"),
                    onTap: () {
                      PersonalInformationScreen().launch(context);
                    }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
