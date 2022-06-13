import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/component/main_header.dart';
import 'package:getx/controller/controllers.dart';
import 'package:getx/view/home/components/carousel_slider/carousel_slider_view.dart';

import 'components/carousel_slider/Carousel_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          Obx(() {
            if (homeController.bannerList.isNotEmpty) {
              return CarouselSliderView(bannerList: homeController.bannerList);
            } else {
              return CarouselLoading();
            }
          })
        ],
      ),
    );
  }
}
