import 'dart:async';

import 'package:booking_doctor/common/routes/routes.dart';
import 'package:booking_doctor/pages/group_chat/create_question/state.dart';
import 'package:get/get.dart';

class CreateQuestionController extends GetxController {
  CreateQuestionController();
  final state = CreateQuestionState();

  StreamController _isAllInputValid = StreamController<void>.broadcast();

  @override
  void onInit() {
    super.onInit();
    _binds();
  }

  @override
  void dispose() {
    state.ageController.dispose();
    _isAllInputValid.close();
    super.dispose();
  }

  _binds() {
    state.ageController.addListener(() => _validate());
    state.titleController.addListener(() => _validate());
    state.contentController.addListener(() => _validate());
  }

  _validate() {
    _isAllInputValid.sink.add(null);
  }

  Future handleNextPagePhotoLibrary() async {
    await Get.toNamed(AppRoutes.PHOTO_LIBRARY)?.then((value) {
      state.selectedMediumList = value;
    });
  }

  bool _validateAllInput() {
    return state.titleController.text.isNotEmpty &&
        (state.contentController.text.isNotEmpty &&
            state.contentController.text.length > 30) &&
        (state.ageController.text.isNotEmpty &&
            int.parse(state.ageController.text) > 0 &&
            int.parse(state.ageController.text) < 100);
  }

  Stream<bool> get outputIsAllValid =>
      _isAllInputValid.stream.map((event) => _validateAllInput());
}
