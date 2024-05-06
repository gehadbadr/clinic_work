import 'package:clinic/controller/files/person_file.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/files/persontab1.widgets.dart';
import 'package:clinic/views/widgets/files/persontab2.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomStepper extends StatefulWidget {
  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
//int controller.currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonFileControllerImp>(builder: (controller) {
      return Stepper(
        margin: const EdgeInsets.all(0),
        elevation: 0.0,
        stepIconBuilder: null,
        type: StepperType.horizontal,
        currentStep: controller.currentStep,
        onStepTapped: (step) {
          controller.onStepTapped(step);
        },
        onStepContinue: () {
          controller.onStepContinue();
        },
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 2.8,
                  margin: EdgeInsets.only(top: 30.h),
                  //  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: AppColors.whiteColor,
                          shape: const StadiumBorder()),
                      child: Text(controller.currentStep == 0 ? "next".tr :"sure".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp)),
                      onPressed: details.onStepContinue)),

              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     padding: EdgeInsets.symmetric(vertical: 10.h),
              //       backgroundColor: AppColors.primaryColor,
              //       foregroundColor: AppColors.whiteColor,
              //       shape: const StadiumBorder()),
              //   onPressed: details.onStepContinue,
              //   child:Text(controller.currentStep == 0 ?"next".tr :"sure".tr,
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold, fontSize: 20.sp))
              //   ),

              //    MaterialButton(
              //     shape:
              //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
              //     padding: EdgeInsets.symmetric(vertical: 10.h),
              //     onPressed: details.onStepContinue,
              //     color: AppColors.primaryColor,
              //     textColor: Colors.white,
              //     child: Text(controller.currentStep == 0 ?"next".tr:"sure".tr,
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, fontSize:  20.sp)),
              //   ),
              // )
              //   ),
            ],
          );
        },
        steps: [
          Step(
            title: const Text('1'),
            content: PersonTabOne(),
            state: controller.currentStep == 0
                ? StepState.editing
                : StepState.complete,
            isActive: controller.currentStep == 0,
          ),
          Step(
            label: Container(color: AppColors.golden,),
            title: const Text('2'),
            content: PersonTabTwo(),
            state: controller.currentStep == 1
                ? StepState.editing
                : StepState.complete,
            isActive: controller.currentStep == 1,
          ),
        ],
      );
    });
  }
}

