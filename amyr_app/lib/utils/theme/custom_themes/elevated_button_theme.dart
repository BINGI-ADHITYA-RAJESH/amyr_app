import 'package:amyr_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class KElevatedButtonTheme {

  KElevatedButtonTheme._();

  ///Light Theme

  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: KColors.dark,
      backgroundColor: KColors.primary,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side:BorderSide(color:KColors.dark),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      textStyle: const TextStyle(fontSize: 16,color: KColors.light,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  ///Dark Theme
  
  // static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     elevation: 0,
  //     foregroundColor: Colors.white,
  //     backgroundColor: KColors.primary,
  //     disabledBackgroundColor: Colors.grey,
  //     disabledForegroundColor: Colors.grey,
  //     side:BorderSide(color: KColors.light),
  //     padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
  //     textStyle: TextStyle(fontSize: 16,color: KColors.black,fontWeight: FontWeight.w600),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //   ),
  // );
}