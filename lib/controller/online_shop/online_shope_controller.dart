// ignore_for_file: unnecessary_overrides

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/online_shop/carditem.dart';
import 'package:clinic/views/widgets/online_shop/carditem_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnlineShopController extends GetxController {
  onChanged();
}

class OnlineShopControllerImp extends OnlineShopController {
  TextEditingController search = TextEditingController();
  Widget? now;

  @override
  onChanged() {
    if (search.text.isEmpty) {
      now = const CardItemSatnder();
    } else if (search.text.trim().isEmpty) {
      now = const SizedBox();
    } else {
      now = const CardItemSatnder2();
    }
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
    now = CardItemSatnder();

    super.onInit();
  }

  @override
  void dispose() {
    search.dispose();

    super.dispose();
  }
}
