import 'package:get/get.dart';
import 'package:for_students/Controllers/authController.dart';


class AuthBinding extends Bindings {
  @override  
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
  }
}