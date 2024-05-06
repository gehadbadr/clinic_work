import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ClinicProfilePage2 extends StatelessWidget {
  const ClinicProfilePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Stack(
            alignment: Get.locale!.languageCode == "ar"
                ? Alignment.topLeft
                : Alignment.topRight,
            children: [
              SizedBox(
                child: Container(
                  padding: EdgeInsetsDirectional.only(top: 40.h),
                  color: AppColors.primaryColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: const Radius.circular(250).r,
                              topStart: const Radius.circular(350).r,
                            ),
                            border: Border.all(color: Colors.white, width: 0)),
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 25.w, vertical: 50.h),
                        child: Column(
                          children: [
                            Text(
                              "صيدلية المصري",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "30 كيلومتر",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryColor,
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 30.h),
                              padding: EdgeInsetsDirectional.all(10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                      topStart: const Radius.circular(15).r,
                                      topEnd: const Radius.circular(15).r),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("phones".tr,
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.blackColor)),
                                  const Expanded(child: SizedBox()),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                        color: AppColors.primaryColor,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.all(10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                      bottomEnd: const Radius.circular(15).r,
                                      bottomStart: const Radius.circular(15).r),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "01507623823",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                        color: AppColors.primaryColor,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.all(10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                      topStart: const Radius.circular(15).r,
                                      topEnd: const Radius.circular(15).r),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "25 ش ابن السراج متفرع من وينجت",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                        color: AppColors.primaryColor,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.all(10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                      bottomEnd: const Radius.circular(15).r,
                                      bottomStart: const Radius.circular(15).r),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.w,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "من 10 ص الي 12 م",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                        color: AppColors.primaryColor,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(-190, -150),
                child: Container(
                  width: 320.w,
                  height: 320.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF).withOpacity(0.2),
                      borderRadius:
                          BorderRadius.all(const Radius.circular(300).r)),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Transform.translate(
                  offset: Offset(0, 60.h),
                  child: Container(
                    width: 100.w,
                    height: 90.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsetsDirectional.only(bottom: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25).r),
                    child: Image.asset(
                      ImagesPath.notificationAvatar,
                      width: 150.w,
                      height: 150.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Get.locale!.languageCode == "ar"
                        ? Icons.arrow_right_alt
                        : Icons.arrow_back,
                    size: 30.w,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
