import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

// abstract class VideosController extends GetxController {
//   onSaveTitleChanged( videoId,  context);
//   onSaveChanged( videoId, context);
//   goToVideoDatials();
// }

// class VideosControllerImp extends VideosController {
class VideosControllerImp extends GetxController {
  bool saveTitleValue = false;
 // bool saveValue = false;
  final saveList = List.filled(10, false);
  late final int videoId;

  onSaveChanged(int videoId, context) {
    OverlayLoadingProgress.start();
    print(videoId);
    saveList[videoId] = !saveList[videoId];
    if (saveList[videoId] == true) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 2000),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          "addFavoriteVideo".tr,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 2000),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          "removeFavoriteVideo".tr,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ));
    }
    update();
    OverlayLoadingProgress.stop();
  }

  onSaveTitleChanged(int videoId, context) {
    OverlayLoadingProgress.start();

    saveTitleValue = !saveTitleValue;
    update();

    if (saveTitleValue == true) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 2000),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          "addFavoriteCourse".tr,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 2000),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          "removeFavoriteCourse".tr,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ));
    }
    OverlayLoadingProgress.stop();
  }

  void onInit() {
    super.onInit();
  }

  goToVideoDatials() {
    Get.toNamed(AppRoutes.videoDetails);
  }
}
