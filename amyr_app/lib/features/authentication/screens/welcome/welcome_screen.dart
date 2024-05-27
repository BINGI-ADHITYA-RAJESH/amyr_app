import 'package:amyr_app/features/authentication/screens/Login/login_screen.dart';
import 'package:amyr_app/utils/constants/colors.dart';
import 'package:amyr_app/utils/constants/image_strings.dart';
import 'package:amyr_app/utils/constants/sizes.dart';
import 'package:amyr_app/utils/constants/text_strings.dart';
import 'package:amyr_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:KColors.primary,
      body: Container(
        padding: EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(KImages.welcomeimage),
              height: KDeviceUtils.getScreenHeight() * 0.4,
            ),
            Text(
              KTexts.welcomeTitle1,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Text(
              KTexts.welcomesubTitle1,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
             OutlinedButton(
          onPressed:(){ Get.to(() =>LoginScreen());},
          child: Text(
            KTexts.tContinue,
          ),
        ),
          ],
        ),
      ),
    );
  }
}


