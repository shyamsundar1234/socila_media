import 'package:flutter/material.dart';
import 'package:tafi/global_component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            editTextFormField("email",
                hintText: "email", sHeight: screenHeight / 2, maxLength: 30),
            //  editTextFormField("password"),
            // ElevatedButton(onPressed: (){}, child: Text("Login"))
          ]),
    ));
  }
}
