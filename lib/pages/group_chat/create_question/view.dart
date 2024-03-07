import 'package:booking_doctor/common/widgets/widgets.dart';
import 'package:booking_doctor/pages/group_chat/create_question/controller.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/common/values/values.dart';

class CreateQuestionPage extends GetView<CreateQuestionController> {
  const CreateQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar _buildAppBar() {
      return customAppbar(
        title: Text(
          "Đặt câu hỏi",
          style: getMyTextStyle(
            fontSize: 20.sp,
            color: ColorsValue.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        isCenterTitle: true,
      );
    }

    Widget _buildSexual() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringProfileValue.sexual,
              style: getMyTextStyle(fontSize: 16.sp),
            ),
            ToggleSwitch(
              labels: ["Nam", "Nữ"],
              icons: [Icons.male, Icons.female],
              activeBgColor: [ColorsValue.secondColor, ColorsValue.secondColor],
              minWidth: 80.w,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              onToggle: (index) => controller.state.indexSexual = index!,
            )
          ],
        ),
      );
    }

    Widget _buildAge() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                StringGroupChatValue.age,
                style: getMyTextStyle(fontSize: 16.sp),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextFieldcs(
                hint: StringGroupChatValue.enter_age,
                controller: controller.state.ageController,
                textInputType: TextInputType.number,
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildTitleQuestion() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: TextField(
          minLines: 1,
          maxLines: 5,
          style: getMyTextStyle(fontSize: 16.sp),
          controller: controller.state.titleController,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 100.h,
              maxWidth: 360.w,
              minHeight: 50.h,
            ),
            contentPadding: EdgeInsets.zero,
            hintText: StringGroupChatValue.title_question,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );
    }

    Widget _buildContentQuestion() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: TextField(
          style: getMyTextStyle(fontSize: 16.sp),
          minLines: 5,
          maxLines: 10,
          controller: controller.state.contentController,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 200.h,
              maxWidth: 360.w,
              minHeight: 100.h,
            ),
            contentPadding: EdgeInsets.zero,
            hintText: StringGroupChatValue.content_question,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );
    }

    Widget _buildContent() {
      return Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 4,
                color: Colors.grey,
                spreadRadius: 2,
              )
            ]),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Câu hỏi ở chế độ ẩn danh",
                      style: getMyTextStyle(color: ColorsValue.secondColor),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                _buildSexual(),
                SizedBox(height: 20.h),
                _buildAge(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: Colors.grey,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                _buildTitleQuestion(),
                const Divider(thickness: 1),
                SizedBox(height: 10.h),
                _buildContentQuestion(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          Obx(() {
            return Container(
              margin: EdgeInsets.only(top: 20.h),
              height: 200.w,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.state.selectedMediumList.length,
                itemBuilder: (context, index) {
                  Medium medium = controller.state.selectedMediumList[index];
                  return Container(
                    margin: EdgeInsets.only(right: 10.w, left: 10.w),
                    child: Stack(
                      children: [
                        Container(
                          height: 200.w,
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: ThumbnailProvider(
                                mediumId: medium.id,
                                highQuality: true,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }),
        ],
      );
    }

    Widget _buildBottomNav() {
      return Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        height: 60.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => controller.handleNextPagePhotoLibrary(),
              child: Row(
                children: [
                  Icon(Icons.image, color: ColorsValue.secondColor),
                  SizedBox(width: 10.w),
                  Text(
                    StringGroupChatValue.add_related_image,
                    style: getMyTextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            StreamBuilder<bool>(
                stream: controller.outputIsAllValid,
                builder: (context, snapshot) {
                  return getMyButton(
                    isBGColors: snapshot.data ?? false,
                    radius: 8.r,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          StringGroupChatValue.send,
                          style: getMyTextStyle(
                              fontSize: 16.sp,
                              color: snapshot.data == true
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                        SizedBox(width: 5.w),
                        Icon(Icons.send,
                            color: snapshot.data == true
                                ? Colors.white
                                : Colors.grey,
                            size: 16.sp)
                      ],
                    ),
                  );
                }),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: 720.h,
            width: 360.w,
            color: ColorsValue.primaryColor,
            child: _buildContent(),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }
}
