import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_gallery/photo_gallery.dart';

class CreateQuestionState {
  var _indexSexual = 0.obs;
  var _age = 20.obs;
  var _selectedMedium = <Medium>[].obs;
  TextEditingController ageController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  set age(int value) => _age.value = value;
  set indexSexual(int value) => _indexSexual.value = value;
  set selectedMediumList(List<Medium> value) => _selectedMedium.value = value;

  int get indexSexual => _indexSexual.value;
  int get age => _age.value;
  List<Medium> get selectedMediumList => _selectedMedium;
}
