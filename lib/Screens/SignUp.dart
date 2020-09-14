import 'package:flutter/material.dart';
import 'package:for_students/Utils/constants.dart';

class SignUp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Display Name'),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
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
                        Navigator.of(context).pushNamed('/Home');
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
                        Navigator.of(context).pushNamed('/LoginPage');
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
    );
  }
}
