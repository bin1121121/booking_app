import 'package:booking_doctor/pages/group_chat/controller.dart';
import 'package:get/get.dart';

class GroupChatBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GroupChatController>(() => GroupChatController());
  }
}
