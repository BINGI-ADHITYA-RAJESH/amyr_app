
 
  // Add Widgets binding
  // Init Local Storage
  // Await Native Splash
  // Initialize Firebase
  // Initialize autentication

import 'package:amyr_app/app.dart';
import 'package:amyr_app/features/authentication/controllers/authentication_controllers/auth_controllers.dart';
import 'package:amyr_app/features/authentication/controllers/authentication_controllers/otp_controller.dart';
import 'package:amyr_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(AuthControllers());
  Get.put(OtpController());

  runApp(MyApp());
}