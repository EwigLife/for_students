
import 'package:for_students/Controllers/authController.dart';
import 'package:for_students/Controllers/userController.dart';
import 'package:for_students/Screens/Home.dart';
import 'package:for_students/Screens/SplashScreen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Root extends GetWidget<AuthController> {
  

  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return Home();
        } else {
          return SplashScreen();
        }
      },
    );
  }
}