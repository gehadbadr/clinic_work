// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_botton_icon_or_image.dart';

Widget iconText({
  required double margin,
  required String text,
  required String image,
  Color? color,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
    decoration: BoxDecoration(
        color: color ?? const Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(12).r),
    child: CustomBottonIconAndImage(
      marginHorizontal: 15.w,
      marginvertical: margin,
      withBorder: 0,
      borderRadius: 12.r,
      padding: 0,
      onTap: () {},
      child: Row(children: [
        Image.asset(
          image,
          width: 45.w,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
      ]),
    ),
  );
}
