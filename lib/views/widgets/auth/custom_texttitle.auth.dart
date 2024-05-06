import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextTitle extends StatelessWidget {
  final String text;
  final double? fontSize;
  const CustomTextTitle({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,

        //  textAlign: TextAlign.right,
        style: TextStyle(
          color: AppColors.blackColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 22.sp,
        ));
  }
}
