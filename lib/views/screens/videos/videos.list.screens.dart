import 'package:clinic/controller/videos/videos_controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/videos/vidoes.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VideosList extends StatefulWidget {
  const VideosList({super.key});

  @override
  State<VideosList> createState() => _VideosListState();
}

class _VideosListState extends State<VideosList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Wrap(alignment: WrapAlignment.spaceAround, children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text('videoHeader'.tr,
                          style: TextStyle(
                              fontFamily: "ArefRuqaa",
                              fontSize: 22.sp,
                              color: AppColors.blackColor)),
                    ),
                  ]),
                ),
              ]),
              SizedBox(
                height: 5.h,
              ),
              const Divider(
                color: AppColors.secondryColor,
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: context.screenHeight - 150.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int i) =>
                      GetBuilder<VideosControllerImp>(builder: (controller) {
                    return VideosWidget(
                      id: i,
                      image: ImagesPath.video,
                      title: 'title2'.tr,
                      time: '30',
                      view: '2.4k',
                      date: '6 ${'months'.tr}',
                      showPlayIcon: true,
                      save: controller.saveList[i],
                      onPress: () {
                        controller.goToVideoDatials();
                      },
                      onChange: () {
                        controller.onSaveChanged(i, context);
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
