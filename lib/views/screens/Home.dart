// ignore_for_file: deprecated_member_use

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/clinic/clinic_services.screens.dart';

import 'package:clinic/views/screens/shop_online/online_shop.dart';
import 'package:clinic/views/screens/videos/videos.list.screens.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'clinic/hospitals.dart';
import 'home_page/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  var navbarItem = [
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.home,
        ),
        label: "home".tr),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.dashboard_outlined,
        ),
        label: "suppliers".tr),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagesPath.icHospital),
      label: "hospitals".tr,
      activeIcon: SvgPicture.asset(ImagesPath.icHospital,
          color: AppColors.primaryColor),
    ),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.medication_liquid,
        ),
        label: "pharmacy".tr),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagesPath.icEdu),
      label: "educationalWed".tr,
      activeIcon:
          SvgPicture.asset(ImagesPath.icEdu, color: AppColors.primaryColor),
    ),
  ];

  List body = [
    const HomePage(),
    const ClinicServices(),
    const Hospitals(),
    const OnlineShop(),
    const VideosList()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(
            currentIndex: _currentIndex,
            bgColor: AppColors.bgColor,
          )),
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: navbarItem,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.navIcon,
        //  selectedLabelStyle:  TextStyle(fontFamily: FontWeight.w400),
        //unselectedLabelStyle:  TextStyle(fontSize: 10),
        unselectedFontSize: 9,
        selectedFontSize: 9,
        selectedLabelStyle: const TextStyle(overflow: TextOverflow.visible),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
