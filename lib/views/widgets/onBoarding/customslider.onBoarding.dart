import 'package:clinic/controller/onboarding_controller.dart';
import 'package:clinic/views/widgets/logo.dart';
import 'package:clinic/views/widgets/onBoarding/custombutton.onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/data/datasource/static/static.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Get.locale!.languageCode == "ar"
                            ? Alignment.topLeft
                            : Alignment.topRight,
                        children: [
                          Image.asset(
                            onBoardingList[i].image!,
                            height: MediaQuery.of(context).size.height / 1.6.h,
                            width: MediaQuery.of(context).size.width - 30.w,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              child: Text(
                                'skip'.tr,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              onTap: () {
                                Get.offAllNamed(AppRoutes.signupScreen);
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(onBoardingList[i].title!,
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 26.sp)),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          constraints: BoxConstraints(minHeight: 150.h),
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onBoardingList[i].body!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                //height: 2,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp),
                          )),
                      //  Spacer(),
                      CustomButtonOnBoarding(index: i)
                    ],
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3 + 20,
                    child: Padding(
                        padding: EdgeInsets.only(top: 70.0.h),
                        child: const logoWidget()),
                  )
                ],
              ),
            ));
  }
}
