import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  const CustomButtomAuth({
    super.key,
    required this.text,
    this.onPressed,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: text == "signup".tr
          ? EdgeInsets.only(top: 10.h, bottom: 15.h)
          : EdgeInsets.only(top: 30.h),
      //  padding: EdgeInsets.all(10),
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        onPressed: onPressed,
        color: AppColors.primaryColor,
        textColor: Colors.white,
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: fontSize ?? 20.sp)),
      ),
    );
  }
}
