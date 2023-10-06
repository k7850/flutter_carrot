import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "PatuaOne",
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 15, color: Colors.grey),
      bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      labelMedium: TextStyle(fontSize: 15, color: Colors.green),
      labelLarge: TextStyle(fontSize: 15, color: Colors.black),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(double.infinity, 60),
      ),
    ),
    primarySwatch: Colors.green,
    // appBarTheme: AppBarTheme(iconTheme: IconThemeData()),
  );
}
