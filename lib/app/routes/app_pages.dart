import 'package:get/get.dart';

import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/activity/bindings/activity_binding.dart';
import '../modules/activity/views/activity_view.dart';
import '../modules/admission_inquiry/bindings/admission_inquiry_binding.dart';
import '../modules/admission_inquiry/views/admission_inquiry_view.dart';
import '../modules/assignment/bindings/assignment_binding.dart';
import '../modules/assignment/views/assignment_view.dart';
import '../modules/attandance/bindings/attandance_binding.dart';
import '../modules/attandance/views/attandance_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/events/bindings/events_binding.dart';
import '../modules/events/views/events_view.dart';
import '../modules/facility/bindings/facility_binding.dart';
import '../modules/facility/views/facility_view.dart';
import '../modules/facility/views/facility_view.dart';
import '../modules/facility/views/facility_view.dart';
import '../modules/facility/views/facility_view.dart';
import '../modules/facility/views/facility_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/managementMessage/bindings/management_message_binding.dart';
import '../modules/managementMessage/views/management_message_view.dart';
import '../modules/notice/bindings/notice_binding.dart';
import '../modules/notice/views/notice_view.dart';
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

  // static const INITIAL = Routes.EVENTS;
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
    // GetPage(
    //   name: _Paths.FACILITY,
    //   page: () => const FacilityView(),
    //   binding: FacilityBinding(),
    // ),
    // GetPage(
    //   name: _Paths.NOTICE,
    //   page: () => const NoticeView(),
    //   binding: NoticeBinding(),
    // ),
    GetPage(
      name: _Paths.FACILITY,
      page: () => const FacilityView(),
      binding: FacilityBinding(),
    ),
    GetPage(
      name: _Paths.NOTICE,
      page: () => const NoticeView(),
      binding: NoticeBinding(),
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
    GetPage(
      name: _Paths.EVENTS,
      page: () => EventsView(),
      binding: EventsBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITY,
      page: () => const ActivityView(),
      binding: ActivityBinding(),
    ),
    GetPage(
      name: _Paths.ADMISSION_INQUIRY,
      page: () => const AdmissionInquiryView(),
      binding: AdmissionInquiryBinding(),
    ),
    GetPage(
      name: _Paths.ASSIGNMENT,
      page: () => const AssignmentView(),
      binding: AssignmentBinding(),
    ),
  ];
}
