import 'package:booking_doctor/pages/edit_profile/dotor/index.dart';
import 'package:booking_doctor/pages/edit_profile/dotor/view.dart';
import 'package:booking_doctor/pages/edit_profile/patient/index.dart';
import 'package:get/get.dart';
import 'package:booking_doctor/common/routes/names.dart';
import 'package:booking_doctor/pages/sign_up/index.dart';
import 'package:booking_doctor/pages/sign_up/verify/index.dart';
import 'package:booking_doctor/pages/forgot_password/index.dart';
import 'package:booking_doctor/pages/sign_in/index.dart';
import 'package:booking_doctor/pages/splash/index.dart';
import 'package:booking_doctor/pages/home/index.dart';
import 'package:booking_doctor/pages/group_chat/create_question/index.dart';
import 'package:booking_doctor/pages/photo_library/index.dart';

import 'package:booking_doctor/pages/application/index.dart';

class AppPages {
  static final List<GetPage> routes = [
    // GetPage(
    //   name: AppRoutes.WELCOME,
    //   page: () => WelcomPage(),
    //   binding: WelcomeBinding(),
    //   middlewares: [RoutesWelcomeMiddleware(priority: 1)],
    //   transitionDuration: Duration(microseconds: 500),
    //   transition: Transition.leftToRight,
    // ),
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => SplashPage(),
      // middlewares: [
      //   RoutesSplashMiddleware(priority: 1),
      // ],
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.VERIFY,
      page: () => VerifyPage(),
      binding: VerifyBindings(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.FORGOT_PASSWORD,
      page: () => ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.APPLICATION,
      page: () => ApplicationPage(),
      binding: ApplicationBindings(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    // GetPage(
    //   name: AppRoutes.CREATE_POST,
    //   page: () => CreatePostPage(),
    //   binding: CreatePostBinding(),
    //   transitionDuration: Duration(milliseconds: 500),
    //   transition: Transition.rightToLeft,
    // ),
    GetPage(
      name: AppRoutes.PHOTO_LIBRARY,
      page: () => PhotoLibraryPage(),
      binding: PhotoLibraryBinding(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBindings(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.CREATE_QUESTION,
      page: () => CreateQuestionPage(),
      binding: CreateQuestionBindings(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: AppRoutes.EDIT_PROFILE_PATIENT,
      page: () => EditProfilePatientPage(),
      binding: EditProfilePatientBinding(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.EDIT_PROFILE_DOCTOR,
      page: () => EditProfileDoctorPage(),
      binding: EditProfileDoctorBinding(),
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.rightToLeft,
    ),

    // GetPage(
    //   name: AppRoutes.SHOW_PDF,
    //   page: () => ShowPdfPage(),
    //   binding: ShowPdfBinding(),
    //   transitionDuration: Duration(milliseconds: 500),
    //   transition: Transition.rightToLeft,
    // ),
  ];
}
