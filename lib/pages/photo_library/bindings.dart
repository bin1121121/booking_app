import 'package:get/get.dart';
import 'package:booking_doctor/pages/photo_library/index.dart';

class PhotoLibraryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoLibraryController>(() => PhotoLibraryController());
  }
}
