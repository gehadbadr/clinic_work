import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/consts/colors.dart';
import '../../../core/consts/images.dart';
import '../../screens/item_view/item_view.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
      padding: const EdgeInsets.all(10).w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(20).r),
      child: InkWell(
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ItemView();
        })),
        child: Stack(children: [
          Column(children: [
            Image.asset(
              ImagesPath.imageItem,
              width: 98.w,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20.r),
                  child: Container(
                    padding: EdgeInsetsDirectional.all(15.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20).r,
                        color: const Color(0xffF4F4F4),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(0, 2),
                              spreadRadius: 0,
                              blurRadius: 2.r)
                        ]),
                    child: Image.asset(
                      ImagesPath.imageShopCar,
                      width: 22.w,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Muli vitamins",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 10.w, end: 20.w),
                      child: Text(
                        "Price after discount: 250 EGP".tr,
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.red),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                          "Before discount: 280 EGP".tr,
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                        Container(
                          width: 100.w,
                          height: 1.h,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ]),
          IconButton(
              onPressed: () {
                setState(() {});
                isFavorite = !isFavorite;
                print("sssssssssssss${isFavorite}");
              },
              icon: Icon(
                isFavorite == false
                    ? Icons.favorite_border_outlined
                    : Icons.favorite,
                color: isFavorite ? Colors.red : Colors.black,
                size: 25,
              )),
        ]),
      ),
    );
  }
}
