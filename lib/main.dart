import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:for_students/Controllers/bindings/bindings.dart';
import 'package:get/get.dart';
import 'Utils/root.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ForStudents());
}

class ForStudents extends StatelessWidget {
  const ForStudents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(//we have to conver Material App into GetMaterialApp to run under get package
      //this lines wad missing
      initialBinding: AuthBinding(),
      //lines above this
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        accentColor: Colors.white,
        fontFamily: 'Kufam',
      ),
      home: Root(),
    );
  }
}