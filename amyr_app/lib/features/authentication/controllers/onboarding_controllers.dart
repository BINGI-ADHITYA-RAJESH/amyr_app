
import 'package:amyr_app/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///The smooth page indicator controller is directly listening to PageView controller , so no use of currentpage index there.
///The current page index can be used for arrow next button

class OnboardingController extends GetxController {

  static OnboardingController get instance => Get.find();

   ///variables
   final pagecontroller = PageController();

   Rx<int> currentpageIndex = 0.obs;

   ///update current page Index
   
   void updatepageIndicator(index)=> currentpageIndex.value = index;

   ///Jumping to next page by updating currentindex
   
   void nextPage(){
    if (currentpageIndex.value == 2){
      Get.to(WelcomeScreen());
    }
    else{
      int page = currentpageIndex.value + 1;
      pagecontroller.jumpToPage(page);
    }
   }

}