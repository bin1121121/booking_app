import 'package:booking_doctor/common/values/string_manager.dart';
import 'package:booking_doctor/common/values/values.dart';
import 'package:booking_doctor/common/widgets/my_text_style.dart';
import 'package:booking_doctor/common/widgets/widgets.dart';
import 'package:booking_doctor/pages/home/widget/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/common/values/colors_value.dart';
import 'package:booking_doctor/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  Widget _buildHeader() {
    return Container(
      height: 120.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.w, top: 10.h, right: 20.w),
      child: Column(
        children: [
          Text(
            StringValue.welcomeTitle,
            style: getMyTextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search),
              fillColor: Colors.white,
              filled: true,
              hintText: StringHomeValue.search,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNav() {
    return Container(
      height: 100.h,
      width: double.infinity,
      margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            spreadRadius: 2,
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          navItem(
            title: StringHomeValue.health_record,
            iconPath: AssetIconValue.heath_record,
            onTap: () {},
          ),
          navItem(
            title: StringHomeValue.calendar,
            iconPath: AssetIconValue.calendar,
            onTap: () {},
          ),
          navItem(
            title: StringHomeValue.group_chat,
            iconPath: AssetIconValue.group_chat,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorList() {
    return Container(
      width: double.infinity,
      height: 370.h,
      color: Colors.blueGrey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //title
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringHomeValue.doctor_list,
                  style: getMyTextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                  child: getMyButton(
                    isBGColors: false,
                    radius: 8.r,
                    isBorderSide: true,
                    onPressed: () {},
                    child: Text(
                      "Xem thêm",
                      style: getMyTextStyle(fontSize: 12.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 10.w),
            child: Text(
              StringHomeValue.note_1,
              style:
                  getMyTextStyle(fontSize: 14.sp, color: Colors.grey.shade600),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 270.h,
            width: double.infinity,
            child: ListView.builder(
              // padEnds: false,
              // controller: controller.state.pageController,
              scrollDirection: Axis.horizontal,
              // physics: PageScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  width: 150.w,
                  margin: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage(
                              AssetImgValue.avt_default,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Bác sĩ $index",
                        style: getMyTextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: ColorsValue.secondColor,
                            size: 15.sp,
                          ),
                          Text(
                            "5",
                            style: getMyTextStyle(fontSize: 12.sp),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        color: ColorsValue.thirdColor,
                        padding: EdgeInsets.symmetric(
                          vertical: 5.h,
                          horizontal: 10.w,
                        ),
                        child: Text(
                          "Chuyên khoa: Nội",
                          style: getMyTextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Bệnh viện ....................",
                        style: getMyTextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey.shade600,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(height: 10.h),
                      getMyButton(
                        radius: 8.r,
                        onPressed: () {},
                        child: Text(
                          StringHomeValue.advise,
                          style: getMyTextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                        isBGColors: true,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: 600.h,
      width: 360.w,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: ColorsValue.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNav(),
          SizedBox(height: 20.h),
          _buildDoctorList(),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildHeader(),
        _buildBody(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    controller;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            height: 720.h,
            width: 360.w,
            // padding: EdgeInsets.only(top: 20.h),
            decoration: BoxDecoration(gradient: ColorsValue.linearPrimary),
            child: _buildContent(),
          ),
        ),
      ),
    );
  }
}
