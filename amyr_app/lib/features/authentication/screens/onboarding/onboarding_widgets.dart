import 'package:amyr_app/features/authentication/controllers/onboarding_controllers.dart';
import 'package:amyr_app/utils/constants/colors.dart';
import 'package:amyr_app/utils/constants/sizes.dart';
import 'package:amyr_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  
    final controller = OnboardingController.instance;

    return Positioned(
      left: KSizes.defaultSpace,
      bottom: KDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        controller: controller.pagecontroller,
        count: 3,
        effect: JumpingDotEffect(
          dotColor: KColors.white,
            activeDotColor: KColors.black,
            dotHeight: 6),
      ),
    );
  }
}


class Onboardingpage extends StatelessWidget {
  const Onboardingpage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: KDeviceUtils.getScreenWidth(context) * 0.8,
            height: KDeviceUtils.getScreenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: KSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class OnboardingArrow extends StatelessWidget {
  const OnboardingArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnboardingController.instance;

    return Positioned(
      bottom: KDeviceUtils.getBottomNavigationBarHeight(),
      right: KSizes.defaultSpace ,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(shape: CircleBorder()),
        onPressed: controller.nextPage,
        child: Icon(Icons.arrow_forward_ios_sharp,color: KColors.dark,),
      ),
    );
  }
}
