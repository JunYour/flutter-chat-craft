import 'package:get/get.dart';
import 'app_routes.dart';

abstract class AppNavigator {
  static void startLogin() {
    Get.toNamed(AppRoutes.login);
  }

  static void startLoginEmail() {
    Get.toNamed(AppRoutes.loginEmail);
  }

  static void startRegister() {
    Get.toNamed(AppRoutes.register);
  }
}
