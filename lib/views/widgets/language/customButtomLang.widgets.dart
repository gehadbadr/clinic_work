import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({Key? key, required this.textbutton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      width: double.infinity,
      child: MaterialButton(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),

        color: AppColors.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textbutton,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp)),
      ),
    );
  }
}
