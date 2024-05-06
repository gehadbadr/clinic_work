import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _navigatetohome();
    super.onInit();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offAllNamed(AppRoutes.languageScreen);
  }
}
