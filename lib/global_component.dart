import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tafi/Colors.dart';
import 'package:tafi/screens/home_screen/home_screen.dart';
  BuildContext context = context;
double screenWidth = MediaQuery.of(context).size.width;
double screenHeight = MediaQuery.of(context).size.height;



singleLogoItem(
  String text,
  Color color,
) {
  return CircleAvatar(
    radius: 30,
    backgroundColor: color,
    child: Text(
      text,
      style: TextStyle(color: appLogoTextColor),
    ),
  );
}

Widget textFormField({IconData? icon,IconData? prIcon,
    TextEditingController? controller, String? hintText, String? labelText}) {
  return Form(
          child: SizedBox(height: 50,
            child: TextFormField(
                decoration: InputDecoration(prefix: Icon(icon,color: Colors.red,),suffix: Icon(prIcon,color: Colors.red,),
                    fillColor: Colors.transparent,
                    // contentPadding: EdgeInsets.symmetric(horizontal: 40),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                      color: Colors.black.withOpacity(0.1),
                    )),
                    filled: true,
                    hintText: hintText,
                    labelText: labelText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ))
      .paddingSymmetric(horizontal: 20);
}
editTextFormField(String labelText,
    {double? sHeight,
      double? sWidth,
      TextInputType? keyBoardType,
      bool? isEnabled,
      String? Function(String?)? validator,
      TextEditingController? controller,
      int? maxLength,
      String? counterText,
      String? hintText,
      IconData? suffixIcon,
      AutovalidateMode? validationMode,
      IconData? prefixIcon,
      int? maxL,
      String? prefixText,
      String? Function(String?)? onChange,
      String? Function(String?)? onSave,
    }) {
  return SizedBox(
    height: sHeight ?? 10,
    width: sWidth ?? 90,
    child: TextFormField(
      textInputAction: TextInputAction.done,
      onSaved: onSave,
      onChanged: onChange,
      maxLines: maxL,
      focusNode: FocusNode(),
      style: GoogleFonts.aBeeZee(fontSize: 13),
      cursorColor: appThemeColor,
      keyboardType: keyBoardType ?? TextInputType.text,
      enabled: isEnabled ?? true,
      validator: validator,
      controller: controller,
      maxLength: maxLength ?? 200,
      autovalidateMode: validationMode,
      decoration: InputDecoration(
        counterText: counterText ?? "",
        prefixIcon: Icon(prefixIcon, size: 18),
        suffixIcon: Icon(suffixIcon),
        labelText: labelText,
        hintText: hintText,
      ),
    ),
  );
}
