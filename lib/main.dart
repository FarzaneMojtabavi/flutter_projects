import 'package:flutter/material.dart';
import 'package:testproject/constants/colors.dart';
import 'package:testproject/constants/sizes.dart';
import 'package:testproject/my_app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          bodySmall: TextStyle(
              fontSize: SizeConst.sm14,
              fontWeight: FontWeight.w400,
              color: ColorConst.darkBlue),
          bodyMedium: TextStyle(
              fontSize: SizeConst.md16,
              fontWeight: FontWeight.w500,
              color:ColorConst.darkBlue),
          bodyLarge: TextStyle(
              fontSize: SizeConst.lg24,
              fontWeight: FontWeight.w700,
              color:ColorConst.darkBlue),
        )),
    home: const MyApp(),
  ));
}
