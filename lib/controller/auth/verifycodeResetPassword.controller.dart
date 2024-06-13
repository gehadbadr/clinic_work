// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiver/async.dart';

abstract class VerifyCodeResetPasswordController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeResetPasswordControllerImp extends VerifyCodeResetPasswordController {
late String verifycode;
  bool loader = false;
  final _remainingTime = 0.obs;
  StreamSubscription<CountdownTimer>? timerr;
  int get remainingTime => _remainingTime.value;


  @override
  checkCode() {    
  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetpasswordScreen);
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
