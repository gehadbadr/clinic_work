import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(
            currentIndex: 10,
            onPressLeading: () {
              Get.back();
            },
            bgColor: AppColors.bgColor,
          )),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: FlexibleGridView(
          axisCount: MediaQuery.of(context).size.width < 450
              ? GridLayoutEnum.threeElementsInRow
              : GridLayoutEnum.fourElementsInRow,
          crossAxisSpacing: 10,
          mainAxisSpacing: 7,
          children: List.generate(
            20,
            (index) => Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    5.w,
                  ),
                  color: AppColors.cardBg,
                  width: 120.w,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetails);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Image.asset(
                            ImagesPath.product,
                            fit: BoxFit.fill,
                            height: 60.h,
                            width: 80.w,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("productTitle".tr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text('${"productDiscountPrice".tr} ${"pound".tr} ',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondryColor,
                              shadows: const [
                                Shadow(
                                  blurRadius: 2.0,
                                  color: AppColors.secondryColor,
                                ),
                              ],
                            )),
                        Text(
                            '${"instead".tr} ${"productPrice".tr} ${"pound".tr} ',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.secondryColor,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 2.0,
                                    color: AppColors.secondryColor,
                                    offset: Offset(0.0, 0.0),
                                  ),
                                ])),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  margin: EdgeInsets.only(left: 5.w, top: 5.h),
                  color: AppColors.secondryColor,
                  child: Text('% ${"percentage".tr} -',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          color: AppColors.whiteColor)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
