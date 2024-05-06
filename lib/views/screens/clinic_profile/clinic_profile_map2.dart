import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/consts/images.dart';
import '../../widgets/commponents/custom_botton_icon_or_image.dart';

class ClinicProfileMap2 extends StatelessWidget {
  const ClinicProfileMap2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.topCenter, children: [
          Container(
            padding: EdgeInsetsDirectional.only(top: 20.h),
            color: AppColors.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(250),
                      topStart: Radius.circular(350),
                    ),
                  ),
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 25, vertical: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "El_Nobaria",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            " . ",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Dr",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "30 كيلومتر",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4.0",
                            style: TextStyle(
                              color: AppColors.fontGrey,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      CustomBottonIconAndImage(
                        onTap: () {},
                        marginvertical: 5.h,
                        marginHorizontal: 5.w,
                        padding: 5.w,
                        withBorder: 2.w,
                        colorBorder: AppColors.primaryColor,
                        borderRadius: 25.r,
                        child: Icon(
                          Icons.mode_comment_outlined,
                          size: 25.w,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.cardBg,
                                offset: const Offset(0, 5),
                                spreadRadius: 0.5.r,
                                blurRadius: 2.r),
                          ],
                          borderRadius: BorderRadiusDirectional.circular(15.r),
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.cardBg,
                            width: 1.w,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsetsDirectional.symmetric(
                                      horizontal: 15.w, vertical: 10.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50).r,
                                      border: Border.all(
                                        color: AppColors.cardBg,
                                        width: 2.w,
                                      )),
                                  child: Image.asset(
                                    ImagesPath.certificates,
                                    width: 45.w,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الأقسام المتواجدة في المستشفي",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w900),
                                    softWrap: true,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                bottom: 10.h,
                              ),
                              width: double.infinity,
                              height: 0.2.h,
                              color: AppColors.blackColor,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1-القسم الداخلي",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Text(
                                      "متاح 2 سرير",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.symmetric(
                                vertical: 10.h,
                              ),
                              width: double.infinity,
                              height: 0.2.h,
                              color: AppColors.blackColor,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2-قسم العناية المركزية",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Text(
                                      "لا يوجد سراير متفرغة",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.symmetric(
                                vertical: 10.h,
                              ),
                              width: double.infinity,
                              height: 0.2.h,
                              color: AppColors.blackColor,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "3=قسم العمليات",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Text(
                                      "متاح جميع السراير",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.cardBg,
                                offset: const Offset(0, 5),
                                spreadRadius: 0.5.r,
                                blurRadius: 2.r),
                          ],
                          borderRadius: BorderRadiusDirectional.circular(15.r),
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.cardBg,
                            width: 1.w,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsetsDirectional.symmetric(
                                      horizontal: 15.w, vertical: 10.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50).r,
                                      border: Border.all(
                                        color: AppColors.cardBg,
                                        width: 2.w,
                                      )),
                                  child: Image.asset(
                                    ImagesPath.certificates,
                                    width: 45.w,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الأقسام المتواجدة في المستشفي",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w900),
                                    softWrap: true,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                bottom: 10.h,
                              ),
                              width: double.infinity,
                              height: 0.2.h,
                              color: AppColors.blackColor,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1-قسم القلب و الصدر.",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsetsDirectional.symmetric(
                                    vertical: 10.h,
                                    horizontal: 15.w,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                          width: 1.w, color: AppColors.cardBg)),
                                  padding: EdgeInsetsDirectional.all(10.w),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                ImagesPath.doctors,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "دكتورة.رحمة أحمد",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                ImagesPath.doctors,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "دكتورة.رحمة أحمد",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                ImagesPath.doctors,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "دكتورة.رحمة أحمد",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(-190, -150),
            child: Container(
              width: 350.w,
              height: 300.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF).withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(300))),
            ),
          ),
          Transform.translate(
            offset: const Offset(-10, 88),
            child: Container(
              width: 120,
              height: 100,
              alignment: Alignment.topCenter,
              margin: const EdgeInsetsDirectional.only(bottom: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Image.asset(
                ImagesPath.clinicProfile,
                width: 200.w,
                height: 200.h,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(-10, 62),
            child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsetsDirectional.only(bottom: 10.h),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Cardiothoracic department",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                  maxLines: 1,
                )),
          ),
          Transform.translate(
            offset: Offset(-150.w, 20.h),
            child: IconButton(
              icon: Icon(
                Icons.arrow_right_alt,
                color: AppColors.whiteColor,
                size: 30.w,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ]),
      ),
    );
  }
}
