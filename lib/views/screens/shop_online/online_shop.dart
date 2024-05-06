import 'package:clinic/views/widgets/online_shop/carditem.dart';
import 'package:clinic/views/widgets/online_shop/carditem_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/consts/colors.dart';
import '../../../core/consts/images.dart';
import '../../widgets/commponents/card_item.dart';

import '../../widgets/commponents/card_item_search.dart';
import '../../widgets/commponents/dialog.dart';
import '../../widgets/commponents/filtter.dart';
import '../../widgets/commponents/text_Form_Field.dart';
import '../item_view/item_view.dart';

class OnlineShop extends StatefulWidget {
  const OnlineShop({super.key});

  @override
  State<OnlineShop> createState() => _OnlineShopState();
}

class _OnlineShopState extends State<OnlineShop> {
  TextEditingController search = TextEditingController();
  Widget? now;
  // Widget stander(BuildContext context) {
  //   return SizedBox(
  //     height: context.screenHeight < 700 ? 400.h : 270.h,
  //     child: ListView.builder(
  //       padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
  //       scrollDirection: Axis.horizontal,
  //       reverse: true,
  //       shrinkWrap: true,
  //       itemBuilder: (context, index) {
  //         return CardItem();
  //       },
  //     ),
  //   );
  // }

  // Widget stander2(BuildContext context) {
  //   return SizedBox(
  //     height: 620.h,
  //     width: 600.w,
  //     child: ListView.builder(
  //       padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),

  //       // shrinkWrap: true,
  //       itemBuilder: (context, index) {
  //         return const CardItemSearch();
  //       },
  //     ),
  //   );
  // }

  @override
  void initState() {
    //  now = stander(context);
    now = CardItemSatnder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50.h,
                    child: DefaultFormField(
                      controller: search,
                      onChanged: (v) {
                        setState(() {
                          if (search.text.isEmpty) {
                            now = CardItemSatnder();
                          } else if (search.text.trim().isEmpty) {
                            now = const SizedBox();
                          } else {
                            now = CardItemSatnder2();
                          }
                        });
                      },
                      fillColor: Colors.white,
                      radius: 20.r,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.primaryColor,
                        size: 24.sp,
                      ),
                      hint: "Find the medicine".tr,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return DefaultDialog(
                              Child: Filtter(),
                            );
                          });
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(15.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20).r,
                        color: AppColors.primaryColor,
                      ),
                      child: Image.asset(
                        ImagesPath.icMenu,
                        width: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15.w, vertical: 30.h),
                child: Text(
                  "Buy more medicines".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              now!,
            ],
          ),
        ),
      ),
    );
  }
}
