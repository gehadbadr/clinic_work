import 'package:flutter/cupertino.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword(BuildContext context);
  goToLogin();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetpassword(context) {
     if (password.text == repassword.text) {
    OverlayLoadingProgress.start();
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(milliseconds: 2000),
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
      content: Text(
        "resetPasswordSuccessfully".tr,
        style: TextStyle(
          fontSize: 16.sp,
        ),
      ),
    ));

      goToLogin();
      OverlayLoadingProgress.stop();
    } else {
      print("Not Valid");
      OverlayLoadingProgress.stop();
    }
    } else {
      OverlayLoadingProgress.stop();
      Get.snackbar(
        "alert".tr,
        "errorRepassword".tr,
        icon: const Icon(
          Icons.lock,
          color: AppColors.primaryColor,
        ),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.primaryColor,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: AppColors.whiteColor,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }

  @override
  goToLogin() {
  
    Get.offNamed(AppRoutes.loginScreen);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
