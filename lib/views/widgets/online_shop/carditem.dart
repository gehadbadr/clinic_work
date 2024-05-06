import 'package:clinic/views/widgets/commponents/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CardItemSatnder extends StatefulWidget {
  const CardItemSatnder({super.key});

  @override
  State<CardItemSatnder> createState() => _CardItemState();
}

class _CardItemState extends State<CardItemSatnder> {
  @override
  Widget build(BuildContext context) {
         return SizedBox(
      height: context.screenHeight < 700 ? 550.h : 270.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
        scrollDirection: Axis.horizontal,
        reverse: true,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CardItem();
        },
      ),
    );

  }
}