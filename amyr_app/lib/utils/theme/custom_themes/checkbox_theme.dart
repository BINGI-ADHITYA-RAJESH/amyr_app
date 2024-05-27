
import 'package:flutter/material.dart';

class KCheckBoxTheme {
  KCheckBoxTheme._();


  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      }
      else{
        return Colors.black;
      }
    }),
    fillColor:  WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)){
        return Colors.lightBlue;
      }
      else{
        return Colors.transparent;
      }
    }),
  );

  // static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  //   checkColor: WidgetStateProperty.resolveWith((states) {
  //     if (states.contains(WidgetState.selected)){
  //       return Colors.white;
  //     }
  //     else{
  //       return Colors.black;
  //     }
  //   }),
  //   fillColor:  WidgetStateProperty.resolveWith((states) {
  //     if (states.contains(WidgetState.selected)){
  //       return Colors.lightBlue;
  //     }
  //     else{
  //       return Colors.transparent;
  //     }
  //   }),
  // );

}