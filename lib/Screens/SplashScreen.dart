import 'package:flutter/material.dart';
import 'package:for_students/Screens/LoginScreen.dart';
import 'package:for_students/Utils/constants.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  
  // startTime() async {
  //   var _duration = Duration(seconds: 5);
  //   return Timer(_duration, navigationPage);
  // }

  // void navigationPage() {
  //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), (_) => false);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startTime();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: kPrimaryColor,),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: kCircularAvatarBGColor, 
                      radius: 100.0,
                      child: ClipOval(child: Image.network('https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10.0,),
                      child: Text('Awsome App Development', 
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ), 
              ),
            ],
          ),
        ],
      ),
    );
  }
}