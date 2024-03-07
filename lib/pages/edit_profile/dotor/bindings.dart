import 'package:booking_doctor/pages/edit_profile/dotor/controller.dart';
import 'package:get/get.dart';

class EditProfileDoctorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileDoctorController>(
        () => EditProfileDoctorController());
  }
}
