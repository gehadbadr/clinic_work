import 'package:clinic/controller/online_shop/online_shope_controller.dart';
import 'package:clinic/views/widgets/online_shop/carditem.dart';
import 'package:clinic/views/widgets/online_shop/carditem_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/consts/colors.dart';
import '../../../core/consts/images.dart';

import '../../widgets/commponents/dialog.dart';
import '../../widgets/commponents/filtter.dart';
import '../../widgets/commponents/text_Form_Field.dart';

class OnlineShop extends StatefulWidget {
  const OnlineShop({super.key});

  @override
  State<OnlineShop> createState() => _OnlineShopState();
}

class _OnlineShopState extends State<OnlineShop> {
  // TextEditingController search = TextEditingController();
  // Widget? now;
  // Widget stander(BuildContext context) {
  //   return SizedBox(
  //     height: context.screenHeight < 700 ? 400.h : 270.h,
  //     child: ListView.builder(
  //       padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
  //       scrollDirection: Axis.horizontal,
  //       reverse: true,
  //       shrinkWrap: true,
  //       itemBuilder: (context, index) {
  //         return CardItem();
  //       },
  //     ),
  //   );
  // }

  // Widget stander2(BuildContext context) {
  //   return SizedBox(
  //     height: 620.h,
  //     width: 600.w,
  //     child: ListView.builder(
  //       padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),

  //       // shrinkWrap: true,
  //       itemBuilder: (context, index) {
  //         return const CardItemSearch();
  //       },
  //     ),
  //   );
  // }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: GetBuilder<OnlineShopControllerImp>(builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50.h,
                    child: DefaultFormField(
                      controller: controller.search,
                      onChanged: (v) {
                        controller.onChanged();
                      },
                      fillColor: Colors.white,
                      radius: 20.r,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.primaryColor,
                        size: 24.sp,
                      ),
                      hint: "Find the medicine".tr,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return DefaultDialog(
                              Child: Filtter(),
                            );
                          });
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(15.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20).r,
                        color: AppColors.primaryColor,
                      ),
                      child: Image.asset(
                        ImagesPath.icMenu,
                        width: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15.w, vertical: 30.h),
                child: Text(
                  "Buy more medicines".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              controller.now!,
            ],
          );
        }),
      ),
    );
  }
}
