// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:clinic/core/consts/consts.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String title;
  final TextEditingController controller;
  final Function(String?)? onClick;
  final IconData icon;
  final bool isPass;
  bool? passwordIcon;
  bool isNum;

  CustomTextField({
    Key? key,
    required this.hint,
    required this.title,
    required this.controller,
    this.onClick,
    required this.icon,
    required this.isPass,
    this.passwordIcon,
    required this.isNum,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? errorMessage(String str) {
    if (widget.hint == "nameHint".tr) {
      return "nameRequired".tr;
    } else if (widget.hint == "phoneHint".tr) {
      return "phoneRequired".tr;
    } else if (widget.hint == "ageHint".tr) {
      return "ageRequired".tr;
    } else if (widget.hint == "emailHint".tr) {
      return "emailRequired".tr;
    } else if (widget.hint == "passwordHint".tr) {
      return "passwordRequired".tr;
    } else if (widget.hint == "repasswordHint".tr) {
      return "repasswordRequired".tr;
    } else if (widget.hint == "oldPasswordHint".tr) {
      return "oldPasswordRequired".tr;
    } else if (widget.hint == "newPasswordHint".tr) {
      return "newPasswordRequired".tr;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 10,
      ),
      TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return errorMessage(widget.hint);
            }
            if (widget.title != "password".tr &&
                widget.title != "repassword".tr &&
                value.length > 25) {
              return "invalidName".tr;
            }
            if (widget.title == "password".tr && value.length < 6) {
              return "weakPassword".tr;
            }

            return null;
          },
          keyboardType: widget.isNum
              ? const TextInputType.numberWithOptions()
              : TextInputType.text,
          onSaved: widget.onClick,
          cursorColor: AppColors.primaryColor,
          style: TextStyle(color: AppColors.primaryColor, fontSize: 18.sp),
          obscureText: widget.isPass == false ? false : widget.passwordIcon!,
          controller: widget.controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: AppColors.blackColor),
              hintText: widget.hint,
              isDense: true,
              contentPadding: EdgeInsets.all(15.w),
              fillColor: AppColors.bgColor,
              // prefixIcon: Icon(
              //   widget.icon,
              //   color: AppColors.primaryColor,
              // ),
              suffixIcon: widget.isPass == true
                  ? InkWell(
                      onTap: () {
                        widget.passwordIcon = !widget.passwordIcon!;
                        setState(() {});
                      },
                      child: widget.passwordIcon!
                          ? const Icon(
                              Icons.visibility_off,
                              color: AppColors.primaryColor,
                            )
                          : const Icon(Icons.visibility))
                  : null,
              //  border:
              //     OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(
              //         color: AppColors.primaryColor,
              //       ),)),
              filled: true,
              //  fillColor: AppColors..white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
              ))),
      SizedBox(
        height: 10.h,
      ),
    ]);
  }
}
