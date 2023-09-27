import 'package:get/get.dart';

import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/attandance/bindings/attandance_binding.dart';
import '../modules/attandance/views/attandance_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/managementMessage/bindings/management_message_binding.dart';
import '../modules/managementMessage/views/management_message_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/todays/bindings/todays_binding.dart';
import '../modules/todays/views/todays_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.ATTANDANCE,
      page: () => const AttandanceView(),
      binding: AttandanceBinding(),
    ),
    GetPage(
      name: _Paths.MANAGEMENT_MESSAGE,
      page: () => const ManagementMessageView(),
      binding: ManagementMessageBinding(),
    ),
    GetPage(
      name: _Paths.TODAYS,
      page: () => const TodaysView(),
      binding: TodaysBinding(),
    ),
  ];
}
