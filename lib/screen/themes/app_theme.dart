import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color.fromARGB(255, 0, 0, 0);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

// ignore: non_constant_identifier_names
ThemeData AppTheme() {
  return ThemeData(
    //primarySwatch: primaryColor,
    brightness: brightness,
    // textTheme: new TextTheme(
    //   button: new TextStyle(color: Colors.green),
    // ),
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    //   minWidth: 200,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    primaryColor: primaryColor,
    accentColor: primaryColor,
    fontFamily: 'Montserrat',
    buttonColor: Color.fromARGB(255, 0, 0, 0),
    cardColor: Colors.white,
  );
}
