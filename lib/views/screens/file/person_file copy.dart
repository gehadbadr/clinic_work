import 'package:flutter/material.dart';

class PersonFile extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<PersonFile> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter Stepper Demo'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: const ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: new Text('Account'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Email Address'),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Address'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Home Address'),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Postcode'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Mobile Number'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Mobile Number'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.list),
        onPressed: switchStepsType,
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}

// import 'package:clinic/controller/files/person_file.controller.dart';
// import 'package:clinic/core/consts/consts.dart';
// import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
// import 'package:clinic/views/widgets/files/persontab1.widgets.dart';
// import 'package:clinic/views/widgets/files/persontab2.widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class PersonFile extends StatelessWidget {
//   PersonFile({super.key});
//   List tabs = [PersonTabOne(), PersonTabTwo()];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.bgColor,
//         appBar: PreferredSize(
//             preferredSize: const Size.fromHeight(kToolbarHeight),
//             child: AppBarSimpleWibget(
//               onPressLeading: () => Get.back(),
//             )),
//         body: SafeArea(
//             child: GetBuilder<PersonFileControllerImp>(builder: (controller) {
//           return PageView.builder(
//               controller: controller.pageController,
//               onPageChanged: (value) {
//                 controller.onPageChanged(value);
//               },
//               itemCount: tabs.length,
//               itemBuilder: (context, i) => tabs[i]);
//         })));
//   }
// }




// import 'package:clinic/controller/files/person_file.controller.dart';
// import 'package:clinic/core/consts/consts.dart';
// import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
// import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
// import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
// import 'package:clinic/views/widgets/files/custom_textfield.widgets.dart';
// import 'package:clinic/views/widgets/files/drop_down_gender.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class PersonFile extends StatelessWidget {
//   const PersonFile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.bgColor,
//         appBar: PreferredSize(
//             preferredSize: const Size.fromHeight(kToolbarHeight),
//             child: AppBarSimpleWibget(
//               onPressLeading: () => Get.back(),
//             )),
//         body: SafeArea(
//             child: GetBuilder<PersonFileControllerImp>(builder: (controller) {
//           return Container(
//             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//             child: Form(
//               key: controller.formstate,
//               child: ListView(shrinkWrap: true, children: [
//                 // const LogoAuth(),
//                 SizedBox(height: 10.h),
//                 Row(
//                   children: [
//                     CustomTextTitle(
//                       text: "patientFile".tr,
//                     ),
//                     SizedBox(
//                       width: 2.w,
//                     ),
//                     Text(
//                       '(${"person".tr})',
//                       style: TextStyle(
//                           color: AppColors.primaryColor,
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20.h),

//                 Row(
//                   children: [
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 2,
//                       child: CustomTextFieldFile(
//                         hint: "".tr,
//                         title: "fullname".tr,
//                         controller: controller.fullname,
//                         onClick: (value) {},
//                         isNum: false,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 2.8,
//                       child: CustomTextFieldFile(
//                         hint: "".tr,
//                         title: "age".tr,
//                         controller: controller.age,
//                         onClick: (value) {},
//                         isNum: true,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Center(
//                   child: Row(
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width / 2.8,
//                             child: CustomTextFieldFile(
//                               hint: "cm".tr,
//                               title: "height".tr,
//                               controller: controller.height,
//                               onClick: (value) {},
//                               isNum: true,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 20.w,
//                       ),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width / 2.8,
//                             child: CustomTextFieldFile(
//                               hint: "kg".tr,
//                               title: "weight".tr,
//                               controller: controller.weight,
//                               onClick: (value) {},
//                               isNum: true,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 20.h),
//                 Text(
//                   "gender".tr,
//                   style: TextStyle(
//                       color: AppColors.primaryColor,
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(height: 10.h),

//                 GenderDropdown(),
//                 SizedBox(height: 40.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 30.h,
//                       width: 30.h,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: AppColors.whiteColor,
//                           border: Border.all(
//                               color: AppColors.primaryColor, width: 2)),
//                       child: Align(
//                           alignment: Alignment.center,
//                           child: Text(
//                             "1",
//                             style: TextStyle(
//                                 color: AppColors.blackColor,
//                                 fontSize: 18.sp,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                     ),
//                     Container(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: const Icon(
//                           Icons.arrow_forward,
//                           color: AppColors.primaryColor,
//                         )),
//                     InkWell(
//                       onTap: () {
//                         controller.goToPersonFile2();
//                       },
//                       child: Container(
//                         height: 30.h,
//                         width: 30.h,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: AppColors.primaryColor,
//                         ),
//                         child: Align(
//                             alignment: Alignment.center,
//                             child: Text(
//                               "2",
//                               style: TextStyle(
//                                   color: AppColors.whiteColor, fontSize: 18.sp),
//                             )),
//                       ),
//                     ),
//                   ],
//                 ),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 2.8,
//                       child: CustomButtomAuth(
//                           text: "next".tr,
//                           onPressed: () {
//                             controller.goToPersonFile2();
//                           }),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20.h),
//               ]),
//             ),
//           );
//         })));
//   }
// }
