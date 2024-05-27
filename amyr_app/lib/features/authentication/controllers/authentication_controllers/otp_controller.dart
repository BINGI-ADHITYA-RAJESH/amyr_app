import 'package:amyr_app/features/Home/screens/Home_page/initial_screen/initial_screen.dart';
import 'package:amyr_app/features/authentication/controllers/authentication_controllers/auth_controllers.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  static OtpController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthControllers.instance.verifyotp(otp);
    if (isVerified) {
      Get.offAll(InitialScreen());
    } else {
      Get.snackbar('Error', 'Invalid OTP');
    }
  }
}
