import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  double? radius;
  final double? width;
  final double? height;
  final String? title;
  final Function()? onPress;
  CustomButton(
      {super.key,
      this.width,
      this.height,
      this.radius,
      this.title,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    radius ??= 12;
    return Container(
        margin: EdgeInsets.all(20.w),
        // width: width != null ? width : context.screenWidth - 50,
        // height: height,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(radius!),
        //   color: AppColors.secondryColor,
        // ),
        // padding: const EdgeInsets.all(10),
        child: Align(
            alignment: Alignment.center,
            child: MaterialButton(
              
              minWidth:  width ?? context.screenWidth - 50,
               height: height,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((radius!))),
              padding: const EdgeInsets.all(
                 20,
              ),
              onPressed: onPress,
              color: AppColors.secondryColor,
              child: Text(
                title!,
                style: const TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            )));
  }
}
