// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BloodTypeDropdown extends StatefulWidget {
  @override
  _BloodTypeDropdownState createState() => _BloodTypeDropdownState();
}

class _BloodTypeDropdownState extends State<BloodTypeDropdown> {
  late String _selectedBloodType;
  List<String> bloodTypes = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];

  @override
  void initState() {
    _selectedBloodType = bloodTypes.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40.h,
          width: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.primaryColor, width: 2.w),
          ),
          child: DropdownButton(
            underline: const SizedBox(),
            borderRadius: BorderRadius.circular(12.r),
            style: const TextStyle(color: AppColors.primaryColor),
            icon: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: const Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 20,
                color: AppColors.primaryColor,
              ),
            ),
            isExpanded: true,
            // borderRadius: BorderRadius.circular(15),            iconSize: 30,

            value: _selectedBloodType,
            onChanged: (newValue) {
              setState(() {
                _selectedBloodType = newValue!;
              });
            },
            items: bloodTypes.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
