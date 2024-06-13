import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiver/async.dart';

import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(BuildContext context);
  goToSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;
  bool loader = false;
  final _remainingTime = 0.obs;
  StreamSubscription<CountdownTimer>? timerr;
  int get remainingTime => _remainingTime.value;

  @override
  checkCode() {}

  @override
  goToSignUp() {
    
    Get.offNamed(AppRoutes.signupScreen);
  }

  @override
  goToSuccessSignUp(context) {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(milliseconds: 2000),
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
          content: Text(
            "registeredSuccessfully".tr,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
        ));
    Get.offNamed(AppRoutes.loginScreen);
  }

  void startCountdown(int seconds) {
    timerr?.cancel();
    timerr =
        CountdownTimer(Duration(seconds: seconds), const Duration(seconds: 1))
            .listen((timer) {
      _remainingTime.value = timer.remaining.inSeconds;
      if (timer.remaining.inSeconds == 0) {
        timerr?.cancel();
      }
    });
  }

  @override
  void onInit() {
    startCountdown(60);
    super.onInit();
  }

  @override
  void onClose() {
    timerr?.cancel();
    super.onClose();
  }
}
