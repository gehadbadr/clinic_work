// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:clinic/core/classes/status_request.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class PersonFileController extends GetxController {
  // personFile();
  // goToHomePage();
  // goToPersonFile();
  // goToPersonFile2();
  uploadFiles();
  next();
  back();
  // onPageChanged(int index);
  onStepTapped(int step);
  onStepContinue();
}

class PersonFileControllerImp extends PersonFileController {
  // GlobalKey<FormState> formstate = GlobalKey<FormState>();

  final GlobalKey<FormState>? tabOne = GlobalKey();
  final GlobalKey<FormState>? tabTwo = GlobalKey();
  late TextEditingController fullname;
  // late TextEditingController bloodcat;
  late TextEditingController height;
  late TextEditingController weight;
  late TextEditingController age;
  late TextEditingController gender;

  late TextEditingController pressure;
  late TextEditingController sugar;
  late TextEditingController email;
  late TextEditingController emergencyte1;
  late TextEditingController emergencyte2;
  late PageController pageController;
  int currentStep = 0;
  int currentPage = 0;
  // SignupData signupData = SignupData(Get.find());

  List data = [];
  List tabs = [1, 2];

  late StatusRequest statusRequest;

  @override
  onStepTapped(int step) {
    var formdata = tabOne?.currentState!;
    var formdata2 = tabTwo?.currentState;
    if (currentStep == 0) {
      if (formdata!.validate()) {
        currentStep = step;
        update();
      }
    } else if (currentStep == 1) {
      if (formdata2!.validate()) {
        currentStep = step;
        //  Get.offNamed(AppRoutes.homepageScreen);
        update();
      }
    }
  }

  @override
  onStepContinue() {
    if (currentStep < 2) {
      var formdata = tabOne?.currentState!;
      var formdata2 = tabTwo?.currentState;
      if (currentStep == 0) {
        if (formdata!.validate()) {
          currentStep += 1;

          update();
        }
      } else if (currentStep == 1) {
        if (formdata2!.validate()) {
          //  currentStep += 1;

          Get.offNamed(AppRoutes.homepageScreen);

          update();
        }
      }
    } else {
      return null;
    }
  }

  @override
  void onInit() {
    pageController = PageController();

    fullname = TextEditingController();
    height = TextEditingController();
    weight = TextEditingController();
    age = TextEditingController();
    gender = TextEditingController();

    pressure = TextEditingController();
    sugar = TextEditingController();
    emergencyte1 = TextEditingController();
    emergencyte2 = TextEditingController();
    super.onInit();
  }

  @override
  uploadFiles() {
    OverlayLoadingProgress.start();
    // TODO: implement uploadFiles
    throw UnimplementedError();
  }

  @override
  next() {
        if(currentPage == 0){
  if (tabOne?.currentState!.validate() != false) {

        currentPage++;

        pageController.animateToPage(currentPage,
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeInOut);
        update();
      }

}else if (tabTwo?.currentState!.validate() != false) {

      Get.toNamed(AppRoutes.homepageScreen);
    }

  }

  @override
  back() {
    currentPage--;

    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    print("currentPage === ${currentPage}");
    update();
  }

  @override
  void dispose() {
    currentStep = 0;
    fullname.dispose();
    height.dispose();
    weight.dispose();
    age.dispose();
    gender.dispose();
    pressure.dispose();
    sugar.dispose();
    emergencyte1.dispose();
    emergencyte2.dispose();
    super.dispose();
  }
}
