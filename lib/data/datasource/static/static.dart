

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/models/onboarding.models.dart';
import 'package:get/get.dart';

import '../../../models/market.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "onboardingtitle1".tr,
      body: "onboardingBody1".tr,
      image: ImagesPath.onBoarding1),
  OnBoardingModel(
      title: "onboardingtitle2".tr,
      body: "onboardingBody2".tr,
      image: ImagesPath.onBoarding2),
  OnBoardingModel(
      title: "onboardingtitle3".tr,
      body: "onboardingBody3".tr,
      image: ImagesPath.onBoarding3),
  OnBoardingModel(
      title: "onboardingtitle4".tr,
      body: "onboardingBody4".tr,
      image: ImagesPath.onBoarding4),
  OnBoardingModel(
      title: "onboardingtitle5".tr,
      body: "onboardingBody5".tr,
      image: ImagesPath.onBoarding5),

];

List market = [
  Market(
      id: '1',
      lat: 31.345692,
      long: 30.437645,
      title: 'Dr,Ali ahmed',
      image: 'assets/images/personIcon.png',
      description: 'Cardiothoracic department'),
  Market(
      id: '2',
      lat: 31.346952,
      long: 30.536145,
      title: 'Dr,Ali ahmed',
      image: 'assets/images/personIcon.png',
      description: 'Cardiothoracic department'),
  Market(
      id: '3',
      lat: 31.454192,
      long: 30.737145,
      title: 'Dr,Ali ahmed',
      image: 'assets/images/personIcon.png',
      description: 'Cardiothoracic department'),
];
List marketHospital = [
  Market(
      id: '1',
      lat: 31.345692,
      long: 30.437645,
      title: 'El_Nobaria',
      image: 'assets/images/hospital.png',
      description: 'Cardiothoracic department'),
  Market(
      id: '2',
      lat: 31.346952,
      long: 30.536145,
      title: 'El_Nobaria',
      image: 'assets/images/hospital.png',
      description: 'Cardiothoracic department'),
  Market(
      id: '3',
      lat: 31.454192,
      long: 30.737145,
      title: 'El_Nobaria',
      image: 'assets/images/hospital.png',
      description: 'Cardiothoracic department'),
];