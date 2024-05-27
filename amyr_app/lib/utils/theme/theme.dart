import 'package:amyr_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:amyr_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:amyr_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:amyr_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:amyr_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:amyr_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class KAppTheme {
  KAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue,   /* colors are to be imported from constants folder and text theme,other custom themes from custom_themes.dart */
    scaffoldBackgroundColor: Colors.white,
    textTheme: KTextTheme.LightTextTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    checkboxTheme: KCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,

    // all themes should be specified in custom themes and use them here.
    // navbar can be done in the same way
  );

  // static ThemeData darkTheme = ThemeData(
  //   useMaterial3: true,
  //   fontFamily: 'Poppins',
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.lightBlue,   /* colors are to be imported from constants folder and text theme,other custom themes from custom_themes.dart */
  //   scaffoldBackgroundColor: Colors.black,
  //   textTheme: KTextTheme.DarkTextTheme,
  //   elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
  //   appBarTheme: KAppBarTheme.darkAppBarTheme,
  //   checkboxTheme: KCheckBoxTheme.darkCheckBoxTheme,
  //   outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
  //   inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
  // );

}