import 'package:booking_doctor/common/routes/routes.dart';
import 'package:booking_doctor/pages/group_chat/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GroupChatController extends GetxController {
  
  final state = GroupChatState();
  final auth = FirebaseAuth.instance;

  void handleNextPageCreateQuestion() {
    Get.toNamed(AppRoutes.CREATE_QUESTION);
  }
}
