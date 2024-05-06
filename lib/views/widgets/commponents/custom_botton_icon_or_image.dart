// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_in_if_null_operators, must_be_immutable
import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';

class CustomBottonIconAndImage extends StatelessWidget {
  double borderRadius;
  void Function()? onTap;
  double withBorder;
  double? marginHorizontal;
  double? marginvertical;
  double padding;
  Widget child;
  Color? color;
  Color? colorBorder;
  CustomBottonIconAndImage({
    Key? key,
    this.marginHorizontal,
    this.marginvertical,
    required this.padding,
    required this.borderRadius,
    this.onTap,
    required this.withBorder,
    required this.child,
    this.color,
    this.colorBorder,
  }) : super(key: key);
  @override
  Widget build(Object context) {
    return InkWell(
      splashColor: AppColors.appBg,
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        margin: EdgeInsetsDirectional.symmetric(
          horizontal: marginHorizontal ?? 0,
          vertical: marginvertical ?? 0,
        ),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: color ?? null,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              width: withBorder,
              color: colorBorder ?? Colors.transparent,
            )),
        child: child,
      ),
    );
  }
}
