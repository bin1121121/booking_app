import 'package:flutter/material.dart';
import 'package:booking_doctor/common/values/values.dart';

AppBar customAppbar({
  Widget? title,
  Widget? leading,
  List<Widget>? action,
  bool isCenterTitle = false,
}) {
  return AppBar(
    title: title != null ? title : null,
    leading: leading,
    // backgroundColor: Colors.transparent,
    centerTitle: isCenterTitle,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        // color: ColorsValue.primaryColor,
        gradient: ColorsValue.linearPrimary,
      ),
    ),
    actions: action,
  );
}
