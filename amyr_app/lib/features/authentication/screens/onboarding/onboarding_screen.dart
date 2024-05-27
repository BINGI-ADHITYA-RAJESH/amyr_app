import 'package:amyr_app/features/authentication/controllers/onboarding_controllers.dart';
import 'package:amyr_app/utils/constants/colors.dart';
import 'package:amyr_app/utils/constants/image_strings.dart';
import 'package:amyr_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:amyr_app/features/authentication/screens/onboarding/onboarding_widgets.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final controller = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: KColors.primary,
      body: Stack(
        children: [
          //Horizantal Scrollable Pages
          PageView(
            controller:controller.pagecontroller ,
            onPageChanged: controller.updatepageIndicator,
            children: const [
              Onboardingpage(
                  image: KImages.onBoardingImage1,
                  title: KTexts.onBoardingTitle1,
                  subtitle: KTexts.onBoardingSubTitle1),
              Onboardingpage(
                  image: KImages.onBoardingImage2,
                  title: KTexts.onBoardingTitle2,
                  subtitle: KTexts.onBoardingSubTitle2),
              Onboardingpage(
                  image: KImages.onBoardingImage3,
                  title: KTexts.onBoardingTitle3,
                  subtitle: KTexts.onBoardingSubTitle3),
            ],
          ),
          //Dot Navigation SmoothPageIndicator
          OnboardingDotNavigation(),

          //Circular button
          OnboardingArrow()
        ],
      ),
    );
  }
}

