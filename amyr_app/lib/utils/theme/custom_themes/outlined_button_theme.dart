

import 'package:amyr_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class KOutlinedButtonTheme {
  KOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 2,
      foregroundColor: Colors.black,
      backgroundColor: KColors.light,
      side: const BorderSide(color: KColors.dark),
      textStyle: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    )
  );

  //   static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  //   style: OutlinedButton.styleFrom(
  //     elevation: 2,
  //     foregroundColor: Colors.white,
  //     backgroundColor: KColors.dark,
  //     side: const BorderSide(color: KColors.light),
  //     textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
  //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //   )
  // );
}