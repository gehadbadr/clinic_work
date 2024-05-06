// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/consts/images.dart';
import '../../widgets/commponents/icon&text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 10.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.symmetric(
                  horizontal: 15.w, vertical: 5.h),
              padding: EdgeInsetsDirectional.all(10.w),
              decoration: BoxDecoration(
                  color: const Color(0xffFF0000),
                  borderRadius: BorderRadius.circular(12).r),
              child: InkWell(
                borderRadius: BorderRadius.circular(12.r),
                onTap: () {},
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "subscription".tr,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 17.sp,
                        ),
                      ),
                      Text(
                        "You must register to enjoy our services".tr,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              child: iconText(
                margin: 15,
                text: 'Book an appointment with your specialist doctor'.tr,
                image: ImagesPath.home1,
              ),
            ),
            iconText(
              margin: 10,
              text: "Book a call with your specialist doctor".tr,
              image: ImagesPath.home2,
            ),
            iconText(
              margin: 10,
              text: "Book a home visit".tr,
              image: ImagesPath.home3,
            ),
            iconText(
              margin: 10,
              text: "Book an x-ray at your home".tr,
              image: ImagesPath.home4,
            ),
            Container(
              width: double.infinity,
              height: 2.h,
              color: const Color(0xffD9D9D9),
              margin: EdgeInsetsDirectional.only(
                top: 25.h,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 15.w, vertical: 5.h),
              child: Text(
                "Articles".tr,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 24.sp,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 118.h,
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15).r,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.r),
                onTap: () {},
                child: Image.asset(
                  ImagesPath.home5,
                  fit: BoxFit.cover,
                  width: 10.w,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
