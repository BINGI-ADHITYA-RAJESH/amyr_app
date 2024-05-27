import 'package:amyr_app/features/authentication/controllers/authentication_controllers/otp_controller.dart';
import 'package:amyr_app/utils/constants/colors.dart';
import 'package:amyr_app/utils/constants/image_strings.dart';
import 'package:amyr_app/utils/constants/sizes.dart';
import 'package:amyr_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final TextEditingController otpController = TextEditingController(); // Step 1: Create a TextEditingController

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
      backgroundColor: KColors.primary,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(KImages.otpimage),
              ),
              Text(KTexts.otpTitle),
              SizedBox(
                height: KSizes.defaultSpace,
              ),
              Form(
                child: TextFormField(
                  controller: otpController, // Step 2: Use the controller in the TextFormField
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(KTexts.otpNo),
                    prefixIcon: Icon(Icons.pin),
                  ),
                ),
              ),
              SizedBox(
                height: KSizes.defaultSpace,
              ),
              OutlinedButton(
                onPressed: () {
                  String otp = otpController.text; // Step 3: Access the controller's text
                  // Assuming you have a method verifyOTP that takes the OTP as a parameter
                  OtpController.instance.verifyOTP(otp); // Use the OTP in your method
                  // Navigate to the next screen
                },
                child: Text(KTexts.logIn),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
