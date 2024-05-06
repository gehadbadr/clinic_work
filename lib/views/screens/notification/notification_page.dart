import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/commponents/card_notification.dart';
import '../clinic_profile/clinic_profile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0).w,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Row(
                children: [
                  Text(
                    "Notifications".tr,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_right_alt,
                        size: 35.w,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: 5.h, top: 5.h, start: 25.w),
              child: Text(
                "today".tr,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey),
              ),
            ),
            InkWell(
                onTap: () => Get.toNamed(AppRoutes.clinicProfileScreen),
                child: cardNotification()),
            InkWell(
                onTap: () => Get.toNamed(AppRoutes.clinicProfileScreen),
                child: cardNotification()),
            InkWell(
                onTap: () => Get.toNamed(AppRoutes.clinicProfileScreen),
                child: cardNotification()),
          ]),
        ),
      ),
    );
  }
}
