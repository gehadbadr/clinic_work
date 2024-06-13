import 'package:clinic/controller/auth/resetpassword.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
import 'package:clinic/views/widgets/auth/custom_textbody.auth.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:clinic/views/widgets/custom_textfield.widgets.dart';
import 'package:clinic/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _LoginState();
}

class _LoginState extends State<ResetPassword> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
         appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child:AppBarSimpleWibget(onPressLeading: () => Get.back(),)
        ),
        body: SafeArea(
            child: GetBuilder<ResetPasswordControllerImp>(
              builder: (controller) {
                return Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          child: Form(
                key: controller.formstate,
                child: ListView(children: [
                  SizedBox(height: 10.h),
                  CustomTextTitle(
                    text: "resetPass".tr,
                  ),
                
                  SizedBox(height: 30.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logoWidget(),
                    ],
                  ),
                  SizedBox(height: 40.h),
                
                
                 CustomTextField(
                      hint: "passwordHint".tr,
                      icon: Icons.lock_outline,
                      title: "password".tr,
                      isPass: true,
                      onClick: (value) {},
                      passwordIcon: true,
                      controller: controller.password,
                      isNum: false,
                    ),
CustomTextField(
                      hint: "repasswordHint".tr,
                      icon: Icons.lock_outline,
                      title: "repassword".tr,
                      isPass: true,
                      onClick: (value) {},
                      passwordIcon: true,
                      controller: controller.repassword,
                      isNum: false,
                    ),

                 
                

                  SizedBox(height: MediaQuery.of(context).size.height /5),
                
                  CustomButtomAuth(
                      text: "send".tr,
                      onPressed: () {
                        controller.resetpassword(context);
                      }),
                  SizedBox(height: 20.h),
                ]),
                          ),
                        );
              }
            )));
  }
}
