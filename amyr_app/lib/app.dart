import 'package:amyr_app/features/Home/screens/Home_page/initial_screen/initial_screen.dart';
import 'package:amyr_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:amyr_app/utils/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
    themeMode: ThemeMode.system,
    theme: KAppTheme.lightTheme,
    //  darkTheme: KAppTheme.darkTheme,
    home:  FirebaseAuth.instance.currentUser != null
          ? InitialScreen()
          : OnboardingScreen(),
   );
  }
}
