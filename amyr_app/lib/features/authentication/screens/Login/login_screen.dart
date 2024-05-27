import 'package:amyr_app/features/authentication/controllers/authentication_controllers/auth_controllers.dart';
import 'package:amyr_app/features/authentication/screens/otp/otp_screen.dart';
import 'package:amyr_app/utils/constants/colors.dart';
import 'package:amyr_app/utils/constants/image_strings.dart';
import 'package:amyr_app/utils/constants/sizes.dart';
import 'package:amyr_app/utils/constants/text_strings.dart';
import 'package:amyr_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController phoneController = TextEditingController(); // Step 1: Create a TextEditingController

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KColors.primary,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(KSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                  image: AssetImage(KImages.welcomeimage),
                  height: KDeviceUtils.getScreenHeight() * 0.4,
                ),
                Text(
                  KTexts.numberTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: KSizes.defaultSpace,
                ),
                Form(
                  child: TextFormField(
                    controller: phoneController, // Step 2: Use the controller in the TextFormField
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text(KTexts.phoneNo),
                      prefixIcon: Icon(Icons.phone_in_talk_rounded),
                    ),
                  ),
                ),
                SizedBox(
                  height: KSizes.defaultSpace,
                ),
                OutlinedButton(
                  onPressed: () {
                    String phoneNo = phoneController.text; // Step 3: Access the controller's text
                    AuthControllers.instance.phoneauthentication(phoneNo); // Use the phone number in your method
                    Get.to(() => OtpScreen()); // Navigate to the OTP screen
                  },
                  child: Text(
                    KTexts.verificationCode,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
