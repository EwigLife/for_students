import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';


void main(){
  runApp(ForStudents());
}

class ForStudents extends StatelessWidget {
  const ForStudents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        accentColor: Colors.white,
        fontFamily: 'Kufam',
      ),
      home: SplashScreen(),
    );
  }
}