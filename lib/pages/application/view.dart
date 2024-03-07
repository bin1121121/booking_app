import 'package:booking_doctor/pages/group_chat/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/common/values/colors_value.dart';
import 'package:booking_doctor/common/widgets/widgets.dart';
import 'package:booking_doctor/pages/application/controller.dart';
import 'package:booking_doctor/pages/home/index.dart';
import 'package:booking_doctor/pages/profile/index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildBottomTabs() {
      return Obx(() {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //home
              IconItem(
                controller.state.pageIndex == 0
                    ? Icons.home
                    : Icons.home_outlined,
                controller.state.pageIndex == 0
                    ? ColorsValue.secondColor
                    : Colors.grey,
                () => controller.handleNavBarTap(0),
              ),
              //group
              IconItem(
                controller.state.pageIndex == 1
                    ? Icons.groups
                    : Icons.groups_outlined,
                controller.state.pageIndex == 1
                    ? ColorsValue.secondColor
                    : Colors.grey,
                () => controller.handleNavBarTap(1),
              ),
              //add post
              // iconItem(
              //   controller.state.pageIndex == 2
              //       ? Icons.calendar_month
              //       : Icons.calendar_month_outlined,
              //   controller.state.pageIndex == 2
              //       ? ColorsValue.secondColor
              //       : Colors.grey,
              //   () => controller.handleNavBarTap(2),
              // ),
              //calendar
              IconItem(
                controller.state.pageIndex == 2
                    ? Icons.calendar_month
                    : Icons.calendar_month_outlined,
                controller.state.pageIndex == 2
                    ? ColorsValue.secondColor
                    : Colors.grey,
                () => controller.handleNavBarTap(2),
              ),

              //person
              IconItem(
                controller.state.pageIndex == 3
                    ? Icons.person
                    : Icons.person_outline,
                controller.state.pageIndex == 3
                    ? ColorsValue.secondColor
                    : Colors.grey,
                () => controller.handleNavBarTap(3),
              ),
            ],
          ),
        );
      });
    }

    Widget _buildPageView() {
      return PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.hanldeOnPageChanged(value);
          },
          children: const [
            HomePage(),
            GroupChatPage(),
            Center(child: Text("calendar")),
            ProfilePage(),
          ]);
    }

    return Scaffold(
      backgroundColor: ColorsValue.primaryColor,
      bottomNavigationBar: _buildBottomTabs(),
      body: _buildPageView(),
    );
  }
}
