// import 'package:clinic/controller/videos/videos_controller.dart';
// import 'package:clinic/core/consts/consts.dart';
// import 'package:clinic/views/widgets/appBar.widgets.dart';
// import 'package:clinic/views/widgets/customButton.widgets.dart';
// import 'package:clinic/views/widgets/videos/vidoes.widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:velocity_x/velocity_x.dart';

// class VideosList extends StatefulWidget {
//   const VideosList({super.key});

//   @override
//   State<VideosList> createState() => _VideosListState();
// }

// class _VideosListState extends State<VideosList> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         appBar: const PreferredSize(
//             preferredSize: Size.fromHeight(60.0),
//             child: AppBarWibget(
//               currentIndex: 4,
//               bgColor: AppColors.appBg,
//             )),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width - 50,
//                               child: Expanded(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Text('videoHeader'.tr,
//                     style: TextStyle(
//                         fontFamily: "ArefRuqaa",
//                         fontSize: 22.sp,
//                         color: AppColors.blackColor)),
//               ),
//                               ),
//                             ),
//                           ]),
//                            SizedBox(
//                     height: 5.h,
//                   ),
//                   const Divider(
//                     color: AppColors.secondryColor,
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   SizedBox(
//                     height: context.screenHeight - 150.h,
//                     child: ListView.builder(
//                       shrinkWrap: true,
//                       padding: const EdgeInsets.all(8),
//                       itemCount: 10,
//                       itemBuilder: (BuildContext context, int index) =>
//                           GetBuilder<VideosControllerImp>(
//                               builder: (controller) {
//                         return VideosWidget(
//                           id: index,
//                                              image: ImagesPath.video,
//                 title: 'title2'.tr,
//                 time: '30',
//                 view: '2.4k',
//                 date: '6 ${'months'.tr}',
//                           save: controller.saveValue,
//                           onPress: () {
//                             controller.goToVideoDatials();
//                           },
//                           onChange: () {
//                             controller.onSaveChanged(index);
//                           },
//                         );
//                       }),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         // CustomButton(title:"اشترك الآن- 99.99 EGP شهريا",width: context.screenWidth-50.w,height: 50.h,radius: 10,onPress:  () {Navigator.pushNamed(context, AppRoutes.videoDetailsList);},)

//         // other properties...

//         //       bottomSheet:

//         //       Container(
//         //         height: 100,
//         // padding: EdgeInsets.all(0),
//         //         child:
//         //                         CustomButton(title:"متابعة",width: context.screenWidth-50.w,height: 50.h,radius: 10,onPress:  () {Navigator.pushNamed(context, AppRoutes.videoDetailsList);},)

//         //       ),
//       ),
//     );
//   }
// }
