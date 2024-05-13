import 'package:clinic/controller/products/product_controller.dart';
import 'package:clinic/views/widgets/commponents/card_item.dart';
import 'package:clinic/views/widgets/commponents/card_item_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CardItemSatnder2 extends StatefulWidget {
  const CardItemSatnder2({super.key});

  @override
  State<CardItemSatnder2> createState() => _CardItemState();
}

class _CardItemState extends State<CardItemSatnder2> {
  @override
  Widget build(BuildContext context) {
       return SizedBox(
      height: 620.h,
      width: 600.w,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),

        // shrinkWrap: true,
        itemBuilder: (BuildContext context, int i) =>
              GetBuilder<ProductsController>(
            builder: (controller) {
              return CardItemSearch(
                  id: i,
                  isFavorite: controller.favoriteList[i],
                  favoriteChange: () {
                    controller.favoriteChanged(i, context);
                  });
            },
          ),
        ));
        
       

  }
}