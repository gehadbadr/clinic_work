// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class chatBuble1 extends StatelessWidget {


  double start;
  double end;
  Color color;

  chatBuble1({
    Key? key,
    required this.start,
    required this.end,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        margin: EdgeInsetsDirectional.only(
            bottom: 5.h, end: end.w, start: start.w, top: 5.h),
        padding: EdgeInsetsDirectional.all(10.w),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor),
            color: color,
            borderRadius: BorderRadius.circular(15).r),
        child: Text(
          "Lorem ipsum dolor, sit amet consectetur",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 16.sp,
            color: color == Colors.white ? AppColors.primaryColor : Colors.white,
          ),
        ),
      ),
    );
  }
}