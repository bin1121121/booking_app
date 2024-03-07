import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget IconItem(IconData icon, Color color, Function() onTap,
    {double size = 30}) {
  return SizedBox(
    height: size.h,
    width: size.h,
    child: IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      onPressed: onTap,
      icon: Icon(
        icon,
        size: size.w,
      ),
      color: color,
    ),
  );
}
