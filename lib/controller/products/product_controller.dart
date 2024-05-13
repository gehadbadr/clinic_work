import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';


class ProductsController extends GetxController {
  final favoriteList = List.filled(10, false);

  late final int productId;

  favoriteChanged(int productId, context) {
    OverlayLoadingProgress.start();
    print(productId);
    favoriteList[productId] = !favoriteList[productId];
    if (favoriteList[productId] == true) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 2000),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          "addFavoriteProduct".tr,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ));
    } else {
      //  Get.rawSnackbar(
      //   barBlur:2.0 ,
      //  messageText:Text(
      //     "removeFavoriteProduct".tr,
      //     style: TextStyle(
      //       fontSize: 18.sp,
      //       fontWeight: FontWeight.bold,
      //       color:AppColors.primaryColor, 
      //     ),),
      //     backgroundColor: AppColors.bgColor.withOpacity(0.5),
      //  snackPosition:SnackPosition.BOTTOM ,
      //     borderRadius: 0,
      //     showProgressIndicator: false,
      //     duration: const Duration(seconds: 4));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 2000),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          "removeFavoriteProduct".tr,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ));
    }
    update();
    OverlayLoadingProgress.stop();
  }

 
  void onInit() {
    super.onInit();
  }

  // goToproductDatials() {
  //   Get.toNamed(AppRoutes.productDetails);
  // }
}
