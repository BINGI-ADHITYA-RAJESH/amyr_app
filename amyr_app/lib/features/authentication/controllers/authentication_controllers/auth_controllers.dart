import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthControllers extends GetxController {
  static AuthControllers get instance => Get.find();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  void phoneauthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credentials) async {
        await _auth.signInWithCredential(credentials);
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar('Error', 'Number is not valid');
        } else {
          Get.snackbar('Error', 'Something went wrong');
        }
      },
      codeSent: (verificationId, resendtoken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      }
    );
  }

  Future<bool> verifyotp(String otp) async {
    var credentials = await _auth.signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: verificationId.value, smsCode: otp
      )
    );
    return credentials.user != null;
  }
}
