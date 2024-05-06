import 'package:clinic/controller/videos/videos_controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:clinic/views/widgets/customButton.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBarWibget(
            currentIndex: 4,
            bgColor: AppColors.appBg,
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("  ${'specialcourse'.tr} ${'title1'.tr}",
                  style: TextStyle(
                      fontFamily: "ArefRuqaa",
                      fontSize:
                          Get.locale!.languageCode == "ar" ? 20.sp : 16.sp,
                      color: AppColors.blackColor)),
              SizedBox(
                width: 10.w,
              ),
              GetBuilder<VideosControllerImp>(builder: (controller) {
                return IconButton(
                  onPressed: () {
                    controller.onSaveTitleChanged(-1, context);
                  },
                  icon: Image.asset(
                    controller.saveTitleValue
                        ? ImagesPath.saved
                        : ImagesPath.noSaved,
                    width: 25.w,
                    height: 25.h,
                    fit: BoxFit.fill,
                  ),
                );
              }),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: AppColors.primaryColor,
                    size: 25.sp,
                  )),
            ]),
            SizedBox(
              height: 5.h,
            ),
            const Divider(
              color: AppColors.secondryColor,
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Get.locale!.languageCode == "ar"
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w),
                child: Text('Whatwillyoulearn'.tr,
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  3,
                  (index) => Directionality(
                        textDirection: Get.locale!.languageCode == "ar"
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                        child: ListTile(
                          title: Text(
                              "  لوريم إيبسوم طريقة لكتابة النصوص في النشر والتصميم الجرافيكي تستخدم بشكل شائع لتوضيح الشكل المرئي للمستند أو الخط ، دون الاعتماد على محتوى ذي معنى. ",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w700)),
                          leading: const Icon(
                            Icons.done,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      )),
            ),
            const Divider(
              color: AppColors.secondryColor,
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Get.locale!.languageCode == "ar"
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w),
                child: Text("thisCourseInclude".tr,
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.access_time,
                      color: AppColors.blackColor,
                      size: 18.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                        " ${"hour".tr} 38 ${"and".tr} ${"min".tr}/45 ${"video".tr}",
                        //  textDirection:TextDirection.rtl ,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700)),
                  ],
                )),
            SizedBox(
              height: 10.h,
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w),
                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: AppColors.blackColor,
                      size: 18.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("${"productionDate".tr} :31/12/2023",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700)),
                  ],
                )),
            SizedBox(
              height: 10.h,
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      ImagesPath.icCertifiy,
                      width: 20.w,
                      height: 20.h,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text('courseCompletionCertificate'.tr,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color.fromRGBO(0, 112, 205, 1),
                            fontWeight: FontWeight.w700)),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  title: "continue".tr,
                  width: context.screenWidth / 3,
                  radius: 40,
                  onPress: () {
                    Get.toNamed(AppRoutes.videoDetailsList);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
