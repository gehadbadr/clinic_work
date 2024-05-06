import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBarSimpleWibget(
            onPressLeading: () {
              Get.back();
            },
          )),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryColor,
            ),
            child: ClipRRect(
              //  borderRadius:
              // BorderRadius.circular(50),
              child: Image.asset(
                ImagesPath.cart,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
