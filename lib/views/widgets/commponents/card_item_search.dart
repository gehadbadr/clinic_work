import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../screens/item_view/item_view.dart';

class CardItemSearch extends StatefulWidget {
  const CardItemSearch({super.key});

  @override
  State<CardItemSearch> createState() => _CardItemSearchState();
}

class _CardItemSearchState extends State<CardItemSearch> {
  bool isFavorite = false;
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
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ItemView();
        })),
        child: Row(children: [
          Container(
            height: 105,
            padding: const EdgeInsetsDirectional.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r)),
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
                    onPressed: () {
                      setState(() {});
                      isFavorite = !isFavorite;
                      print("sssssssssssss${isFavorite}");
                    },
                    icon: Icon(
                      isFavorite == false
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.white,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
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
