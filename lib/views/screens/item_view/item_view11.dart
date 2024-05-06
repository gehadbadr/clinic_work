import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/clinic_profile/clinic_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/appBar.widgets.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarWibget(
          currentIndex: 12,
          onPressLeading: () {
            Navigator.pop(context);
          },
          bgColor: AppColors.secondryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(alignment: AlignmentDirectional.topCenter, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 75.h,
            decoration: const BoxDecoration(
              color: AppColors.secondryColor,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 150.h,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsetsDirectional.all(10.w),
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: const Radius.circular(20).r,
                          topEnd: const Radius.circular(20).r,
                        )),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Price after discount: 250 EGP".tr,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16.2.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(20.r),
                                  child: Container(
                                    padding: EdgeInsetsDirectional.all(10.w),
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20).r),
                                    child: Icon(
                                      Icons.add_shopping_cart_rounded,
                                      color: Colors.white,
                                      size: 30.w,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 5.w),
                              padding: EdgeInsetsDirectional.only(
                                  top: 5.h,
                                  bottom: 5.h,
                                  start: (50).w,
                                  end: 10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10).r,
                                  border: Border.all(
                                      color: AppColors.primaryColor,
                                      width: 2.w)),
                              child: Column(
                                children: [
                                  Text(
                                    "Muli vitamins",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "30 Tabs",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  const Row(
                                    children: [
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
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(vertical: 5.h),
                          padding: EdgeInsetsDirectional.all(15.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).r,
                              border: Border.all(
                                  color: AppColors.primaryColor, width: 2.w)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Indications for use:".tr,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "It provides a mechanism for implementing reservations very smoothly, and the steps that follow the reservation, whether to confirm the reservation."
                                    .tr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (_) => const ClinicProfilePage2()),
                            // );
                          },
                          child: Container(
                            margin:
                                EdgeInsetsDirectional.symmetric(vertical: 5.h),
                            padding: EdgeInsetsDirectional.all(5.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10).r,
                                border: Border.all(
                                    color: AppColors.primaryColor, width: 2.w)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Information about the pharmacy:".tr,
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pharmacy name:".tr,
                                          style: TextStyle(
                                            color: AppColors.primaryColor,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          "Away from you:".tr,
                                          style: TextStyle(
                                            color: AppColors.primaryColor,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w900,
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
                                          "Al-Masry Pharmacy".tr,
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "30 km".tr,
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(vertical: 5.h),
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).r,
                              border: Border.all(
                                  color: AppColors.primaryColor, width: 2.w)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiration date:".tr,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    " 2/3/2025",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.w, vertical: 0),
            padding: EdgeInsets.all(20.w),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150).r,
                color: Colors.white),
            child: Image.asset(
              ImagesPath.itemView,
              width: 180.w,
              fit: BoxFit.contain,
            ),
          ),
        ]),
      ),
    );
  }
}
