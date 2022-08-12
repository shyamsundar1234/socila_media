import 'package:flutter/material.dart';
import 'package:tafi/utils/colors.dart';


ThemeData appTheme() => ThemeData(
    appBarTheme: appBarTheme(),
    elevatedButtonTheme: elevatedButtonTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme());

 appBarTheme() =>const AppBarTheme(
      color: Colors.red,
      iconTheme: IconThemeData(color: Colors.white, size: 20),
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: Colors.red),
      elevation: 20,
    );

elevatedButtonTheme() => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: Colors.red,
      elevation: 1,
      animationDuration: Duration(seconds: 12),
    ));

bottomNavigationBarTheme() => const BottomNavigationBarThemeData(
      backgroundColor: backgroundColor,
    );


myDayTheme() => ThemeData(
  scaffoldBackgroundColor: Colors.white,
  cardTheme:CardTheme(color:  Colors.black),
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
    dividerColor: Colors.black12,
  appBarTheme: appBarTheme(),
  elevatedButtonTheme:elevatedButtonTheme()



);

myNightTheme() =>ThemeData(
    scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(color:  Colors.white),
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  dividerColor: Colors.white54,
);