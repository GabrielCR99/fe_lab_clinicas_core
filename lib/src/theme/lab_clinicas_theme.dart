import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _defaultInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: lightOrangeColor),
  borderRadius: BorderRadius.all(Radius.circular(16)),
);

const orangeColor = Color(0xFFFFAE45);
const lightOrangeColor = Color(0xFFFFEFE9);
const blueColor = Color(0xFF01BDD6);
const lightGreyColor = Color(0xFFFFEFE9);

const titleStyle = TextStyle(
  color: blueColor,
  fontSize: 32,
  fontWeight: FontWeight.w900,
);

const titleSmallStyle = TextStyle(
  color: blueColor,
  fontSize: 24,
  fontWeight: FontWeight.w900,
);

const subtitleSmallStyle = TextStyle(
  color: blueColor,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

final theme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      color: orangeColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    floatingLabelStyle:
        const TextStyle(color: blueColor, fontWeight: FontWeight.w600),
    filled: true,
    fillColor: lightOrangeColor,
    errorBorder: _defaultInputBorder.copyWith(
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedBorder: _defaultInputBorder,
    enabledBorder: _defaultInputBorder,
    border: _defaultInputBorder,
  ),
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(seedColor: lightOrangeColor),
  scaffoldBackgroundColor: lightOrangeColor,
  fontFamily: 'Montserrat',
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.black,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: blueColor,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat',
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.white,
      side: const BorderSide(color: blueColor),
      foregroundColor: blueColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
      ),
    ),
  ),
);
