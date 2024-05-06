// ignore_for_file: deprecated_member_use

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/alertexitapp.dart';
import 'package:clinic/views/widgets/files/custombutton.intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FileCategory extends StatelessWidget {
  const FileCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("patientFile".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 25.sp)),
                SizedBox(
                  height: 40.h,
                ),
                CustomButtonIntro(
                  title: 'person'.tr,
                  bgColor: AppColors.primaryColor,
                  onPressed: () {
                    Get.toNamed(AppRoutes.personFile);
                  },
                ),
                CustomButtonIntro(
                  title: 'company'.tr,
                  bgColor: AppColors.secondryColor,
                  onPressed: () {
                    Get.toNamed(AppRoutes.companyFile);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
