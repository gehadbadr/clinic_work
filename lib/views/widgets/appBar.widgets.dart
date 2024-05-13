// ignore_for_file: deprecated_member_use
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/chat/chat_page.dart';
import 'package:clinic/views/screens/notification/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'commponents/text_Form_Field.dart';

class AppBarWibget extends StatelessWidget {
  final int? currentIndex;
  final Function()? onPressLeading;
  final Function()? onPressAction;
  final String? title;
  final Color bgColor;
  const AppBarWibget(
      {super.key,
      this.currentIndex,
      this.onPressLeading,
      this.onPressAction,
      this.title,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return currentIndex == 0
        ? AppBar(
            leadingWidth: 0,
            leading: const SizedBox(),
            backgroundColor: AppColors.primaryColor,
            title:  Text(
              "welcome".tr,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.notification);
                  },
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                    size: 30,
                  ))
            ],
          )
        : GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: AppBar(
              backgroundColor: currentIndex != null && currentIndex == 4
                  ? AppColors.appBg
                  : currentIndex == 3
                      ? AppColors.whiteColor
                      : bgColor,
              centerTitle: true,
              title: currentIndex != null && currentIndex == 10
                  ? Text(
                      "products".tr,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w800,
                        shadows: const [
                          Shadow(
                            blurRadius: 2.0,
                            color: AppColors.borderLine,
                            offset: Offset(0.0, 2.0),
                          ),
                        ],
                      ),
                    )
                  : const Text(""),
              surfaceTintColor: Colors.transparent,
              bottomOpacity: 0.0,
              elevation: 0.0,
              leadingWidth: currentIndex == 3 ? 200.w : 100.w,
              leading: currentIndex == 3
                  ? Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 10.w, top: 15.h),
                      child: Text(
                        "Online pharmacies".tr,
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize:
                                context.screenHeight < 500 ? 18.sp : 22.sp,
                            fontWeight: FontWeight.w900),
                      ),
                    )
                  : Row(
                      children: [
                        currentIndex != null && currentIndex == 4
                            ? Container(
                                padding: const EdgeInsets.only(
                                    left: 5.5, right: 5.5),
                                child: Row(
                                  children: [
                                    Text(
                                      "عيادة".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "ArefRuqaa",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30.sp,
                                          color: AppColors.primaryColor),
                                    ),
                                    SizedBox(
                                        width: 40,
                                        child: Image.asset(ImagesPath.icAppLogo,
                                            width: 45.w, height: 45.h)),
                                  ],
                                ),
                              )
                            : currentIndex == 4 ||
                                    currentIndex == 3 ||
                                    currentIndex == 2 ||
                                    currentIndex == 1
                                ? const SizedBox()
                                : GestureDetector(
                                    onTap: onPressLeading,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: currentIndex! == 11 ||
                                                currentIndex == 12
                                            ? AppColors.whiteColor
                                            : AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                      ],
                    ),
              actions: [
                currentIndex != null && currentIndex == 10 || currentIndex == 11
                    ? const SizedBox()
                    : currentIndex != null && currentIndex == 4
                        ? Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 5.0, end: 5.0, top: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    width: (MediaQuery.of(context).size.width *
                                            0.4)
                                        .w,
                                    height: 30.h,
                                    child: TextField(
                                      textAlign: TextAlign.end,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "${"search".tr}...",
                                          helperMaxLines: 1,
                                          errorMaxLines: 1,
                                          helperStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "ArefRuqaa",
                                              color: AppColors.secondryColor),
                                          hintMaxLines: 1,
                                          suffixIcon: Icon(
                                            Icons.search,
                                            color: AppColors.secondryColor,
                                            size: 16.sp,
                                          )),
                                      controller: search,
                                    )),
                                SizedBox(
                                  width: 4.w,
                                ),
                              ],
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.only(left: 5.5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.chat);
                                    },
                                    child: SvgPicture.asset(
                                      color: currentIndex == 11 ||
                                              currentIndex == 12
                                          ? AppColors.whiteColor
                                          : AppColors.primaryColor,
                                      ImagesPath.icMessage,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoutes.notification);
                                    },
                                    icon: Icon(Icons.notifications_none,
                                        size: 30,
                                        color: currentIndex == 11 ||
                                                currentIndex == 12
                                            ? AppColors.whiteColor
                                            : AppColors.primaryColor)
                                    //  const Icon(Icons.notifications_none_rounded,
                                    //     color: AppColors.primaryColor)
                                    )
                              ],
                            ),
                          ),
              ],
            ),
          );
  }
}
