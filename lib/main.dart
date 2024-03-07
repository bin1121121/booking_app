import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/common/routes/routes.dart';
import 'package:booking_doctor/common/store/config.dart';
import 'package:booking_doctor/common/store/user.dart';
import 'package:booking_doctor/firebase_options.dart';
import 'package:booking_doctor/common/service/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<StorageService>(() => StorageService().init());
  Get.put<ConfigStore>(ConfigStore());
  Get.put<UserStore>(UserStore());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 720),
      minTextAdapt: true,
      // useInheritedMediaQuery: true,
      // splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          // useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.INITIAL,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
