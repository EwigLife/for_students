import 'package:flutter/material.dart';
import 'package:for_students/Controllers/authController.dart';
import 'package:for_students/Utils/constants.dart';
import 'package:get/get.dart';

class Home extends GetWidget<AuthController> {
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
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
                        controller.signOut();
                      },
                      child: Center(
                        child: Text('PoP',
                        style: TextStyle(color: Colors.white,
                        fontSize: 25.0,),),
                      ),
                    ),
                  ),
                ),
                ),
      ],
    );
                
  
  }
}