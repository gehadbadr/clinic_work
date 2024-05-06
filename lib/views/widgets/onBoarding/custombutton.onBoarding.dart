import 'package:clinic/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  final int index;
  const CustomButtonOnBoarding({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      width: 200.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20).r,
          border: Border.all(width: 2.w, color: AppColors.primaryColor)),
      child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          textColor: AppColors.secondryColor,
           shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20).r, // <-- Radius
    ),
          onPressed: () {
            controller.next();
          },
          // color: AppColors.whiteColor,
          child: Text(
            index == 4 ? "start".tr : "next".tr,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800),
          )),
    );
  }
}
