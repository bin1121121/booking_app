import 'package:booking_doctor/common/widgets/widgets.dart';
import 'package:booking_doctor/pages/group_chat/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/common/values/values.dart';

class GroupChatPage extends StatefulWidget {
  const GroupChatPage({super.key});

  @override
  State<GroupChatPage> createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<GroupChatController>();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppBar _buildAppBar() {
      return customAppbar(
        title: Text(
          StringGroupChatValue.group_chat,
          style: getMyTextStyle(
            fontSize: 20.sp,
            color: ColorsValue.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        isCenterTitle: true,
      );
    }

    Widget _buildContent() {
      return Column(
        children: [
          TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            controller: tabController,
            labelStyle: getMyTextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            indicatorColor: ColorsValue.secondColor,
            labelColor: ColorsValue.secondColor,
            unselectedLabelColor: Colors.grey,
            tabs: const[
              Tab(
                text: StringGroupChatValue.all,
              ),
              Tab(
                text: StringGroupChatValue.your_question,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Flexible(
            child: TabBarView(
              controller: tabController,
              children: [
                const Center(
                  child: Text("Tất cả"),
                ),
                const Center(
                  child: Text("Câu hỏi của bạn"),
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            height: 720.w,
            width: 360.w,
            color: ColorsValue.primaryColor,
            padding: EdgeInsets.only(top: 20.h),
            child: _buildContent(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.handleNextPageCreateQuestion(),
        child:  const Icon(Icons.add),
        backgroundColor: ColorsValue.secondColor,
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          1,
        ),
      ),
    );
  }
}
