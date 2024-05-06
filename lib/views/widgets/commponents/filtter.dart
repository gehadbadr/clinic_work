// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, sized_box_for_whitespace, avoid_print
import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'drop_down_list.dart';

class Filtter extends StatefulWidget {
  Filtter({super.key});

  @override
  State<Filtter> createState() => _FiltterState();
}

class _FiltterState extends State<Filtter> {
  var formKey2 = GlobalKey<FormState>();

  var searchAccountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _Filtter;
    var _FiltterList = ["فيتامين A", "فيتامين D", "فيتامين K"];
    return Container(
      height: 200.h,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 155.w,
            child: DefaultDropdown(
              validator: (value) {
                return null;
              },
              labelText: 'Filtter',
              labelStyle: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold),
              value: _Filtter,
              items: _FiltterList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _Filtter = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
