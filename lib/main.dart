import 'package:flutter/material.dart';
import 'package:for_students/Screens/SignUp.dart';
import 'Screens/Home.dart';
import 'Screens/LoginScreen.dart';
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
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => LoginPage(),
        '/SignUp': (BuildContext context) => SignUp(),
        '/Home': (BuildContext context) => Home(),
      },
    );
  }
}