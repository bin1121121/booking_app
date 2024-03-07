import 'package:booking_doctor/pages/group_chat/controller.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/pages/application/controller.dart';
import 'package:booking_doctor/pages/home/index.dart';
import 'package:booking_doctor/pages/profile/index.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<GroupChatController>(() => GroupChatController());

  }
}
