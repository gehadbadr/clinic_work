// ignore_for_file: must_be_immutable

import 'package:clinic/controller/files/person_file.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:clinic/views/widgets/files/persontab1.widgets.dart';
import 'package:clinic/views/widgets/files/persontab2.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonFile extends StatelessWidget {
  PersonFile({super.key});
  List tabs = [PersonTabOne(), PersonTabTwo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBarSimpleWibget(
              onPressLeading: () => Get.back(),
            )),
        body: GetBuilder<PersonFileControllerImp>(builder: (controller) {
          return Center(
            child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
                controller: controller.pageController,
              /*  onPageChanged: (value) {
                  controller.onPageChanged(value);
                },*/
                itemCount: tabs.length,
                itemBuilder: (context, i) => tabs[i]),
          );
        }));
  }
}