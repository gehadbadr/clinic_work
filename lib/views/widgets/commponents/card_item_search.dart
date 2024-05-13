import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../screens/item_view/item_view.dart';

class CardItemSearch extends StatefulWidget {
  final int id;
  final bool isFavorite;

  final Function()? favoriteChange;
  const CardItemSearch({super.key, required this.id, required this.isFavorite, required this.favoriteChange});


  @override
  State<CardItemSearch> createState() => _CardItemSearchState();
}

class _CardItemSearchState extends State<CardItemSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2),
              spreadRadius: 0,
              blurRadius: 2)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.r),
        onTap: () =>
        Get.to(()=>const ItemView())
           /* Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ItemView();
        })*//*)*/,
        child: Row(children: [
          Container(
            height: 105,
            padding: const EdgeInsetsDirectional.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Get.locale!.languageCode == "ar" ?Radius.circular(20.r):Radius.circular(0.r),
                    bottomRight:Get.locale!.languageCode == "ar" ? Radius.circular(20.r):Radius.circular(0.r),
                    topLeft: Get.locale!.languageCode == "ar" ?Radius.circular(0.r):Radius.circular(20.r),
                    bottomLeft :Get.locale!.languageCode == "ar" ? Radius.circular(0.r):Radius.circular(20.r)),
                color: AppColors.primaryColor,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                      blurRadius: 2)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              IconButton(
              onPressed: widget.favoriteChange,
              icon: Icon(
                widget.isFavorite ?Icons.favorite
                    : Icons.favorite_border_outlined
                    ,
                color: widget.isFavorite? Colors.red : Colors.black,
                size: 25,
              )),
                InkWell(
                  borderRadius: BorderRadius.circular(25.r),
                  onTap: () {},
                  child: Image.asset(
                    ImagesPath.onlineShop2,
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            width: MediaQuery.of(context).size.width/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: Get.locale!.languageCode == "ar" ?CrossAxisAlignment.end:CrossAxisAlignment.start,
              children: [
                const Text("Muli vitamins"),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10, end: 20),
                  child: Text("Price after discount: 250 EGP".tr),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Text("Before discount: 280 EGP".tr),
                    Container(
                      width: 100,
                      height: 2,
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(15.r),
            onTap: () {},
            child: Image.asset(
              ImagesPath.onlineShop,
              width: 50,
            ),
          )
        ]),
      ),
    );
    ;
  }
}
