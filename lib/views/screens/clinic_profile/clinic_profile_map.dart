import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/consts/images.dart';
import '../../widgets/commponents/custom_botton_icon_or_image.dart';

class ClinicProfileMap extends StatelessWidget {
  const ClinicProfileMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.topCenter, children: [
          Container(
            padding: EdgeInsetsDirectional.only(top: 20.h),
            color: AppColors.primaryColor,
            child: Column(
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
                            "Youssef maged",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          CustomBottonIconAndImage(
                            onTap: () {},
                            marginvertical: 5.h,
                            marginHorizontal: 5.w,
                            padding: 5.w,
                            withBorder: 2.w,
                            colorBorder: AppColors.primaryColor,
                            borderRadius: 25.r,
                            child: Icon(
                              Icons.videocam_outlined,
                              size: 28.w,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 15.w, vertical: 10.h),
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
                              margin: EdgeInsetsDirectional.only(bottom: 10.h),
                              width: double.infinity,
                              height: 0.2.h,
                              color: AppColors.blackColor,
                            ),
                            Text(
                              "1- دكتوراة جراحة القلب و الصدر في نوفمبر عام 2002.",
                              style: TextStyle(
                                fontSize: 15.sp,
                                height: 0.9.h,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: Text(
                                "2-زميل عيادة سان دوناتو في جامعة ميلانو بدولة إيطاليا عام 2007.",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  height: 0.9.h,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              "3-ماجستير الجراحة العامة في نوفمبر عام 1997-بتقدير امتياز.",
                              style: TextStyle(
                                height: 0.9.h,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: Text(
                                "4-م.كلية الطب في جامعة القاهرة في ديسمبر عام 1993-بتقدير امتياز مع مرتبة الشرف.",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  height: 0.9.h,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              "5-الشهادة العامة للتعليم في إنجلترا/القاهرة في يونيو عام 1987.",
                              style: TextStyle(
                                fontSize: 15.sp,
                                height: 0.9.h,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.all(8.w),
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
                        child: Column(children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.w),
                                padding: EdgeInsetsDirectional.all(5.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    border: Border.all(
                                      width: 1.w,
                                      color: AppColors.cardBg,
                                    )),
                                child: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: AppColors.primaryColor,
                                  size: 25.w,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "أسعار و أيام  الكشف في العيادة  ",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsetsDirectional.symmetric(vertical: 5.h),
                            width: double.infinity,
                            height: 1.h,
                            color: Color.fromARGB(255, 226, 224, 224),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "كشف عادي:",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "كشف مستعجل:",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "300 ج",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "450ج",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ]),
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
                ImagesPath.person,
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
                  "Cardiology and thoracology",
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
