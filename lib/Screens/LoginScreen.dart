import 'package:flutter/material.dart';
import 'package:for_students/Screens/SignUp.dart';
import 'package:for_students/Utils/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text('WelCome',
                    style: TextStyle(
                      fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    ),
                     ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    child: Text('!',
                    style: TextStyle(
                      fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    ),
                     ),
                  ),
                ],
              ),
              Container(
                child: Text('EwigLife',
                style: TextStyle(
                      fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,),
                     ),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(top: 15.0,),
                    child: InkWell(
                      child: Text('Forgot Password ?',
                      style: TextStyle(color: kPrimaryColor,),
                      ),
                       ),
                  ),
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
                      onTap: (){},
                      child: Center(
                        child: Text('Login',
                        style: TextStyle(color: Colors.white,
                        fontSize: 25.0,),),
                      ),
                    ),
                  ),
                ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                  child: Container(
                    height: 50.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: ImageIcon(
                              AssetImage('assets/images/google.png'),
                              ),
                              ),
                              SizedBox(width: 10.0),
                              Center(
                                child: Text('Login With Google',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('New To EwigLife'),
                    SizedBox(width: 5.0,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, );
                      },
                      child: Text('SignUP',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ],
                ),
                ],
            ),
          ),
      ),
    );
  }
}