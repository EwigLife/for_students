import 'package:flutter/material.dart';
import 'package:for_students/Controllers/authController.dart';
import 'package:for_students/Utils/constants.dart';
import 'package:get/get.dart';

class SignUp extends GetWidget<AuthController> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController uidController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Full Name'),
                  controller: nameController,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Display Name'),
                  controller: displayNameController,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  controller: emailController,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(height: 40.0,),
                  Padding(padding: EdgeInsets.all(15.0),
                  child: Container(
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: kPrimaryColor,
                      shadowColor: Colors.black12,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){
                          controller.createUser(nameController.text, emailController.text, passwordController.text, uidController.text);
                        },
                        child: Center(
                          child: Text('Sign Up',
                          style: TextStyle(color: Colors.white,
                          fontSize: 25.0,),),
                        ),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 20.0,),
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Text('Go Back',
                      style: TextStyle(
                        fontSize: 40,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
