import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';

class AppBarSimpleWibget extends StatelessWidget {
  final Function()? onPressLeading;
  final Color? color;
  final Color? bgColor;
  const AppBarSimpleWibget(
      {super.key,this.onPressLeading,this.color,this.bgColor});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
            scrolledUnderElevation: 0,
            elevation: 0.0,
            backgroundColor:bgColor ?? AppColors.bgColor,
            leading: GestureDetector(
              onTap: onPressLeading,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back,color:color ?? AppColors.blackColor,)
                
              ),
            ),
          );
       }
}
