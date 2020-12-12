import 'package:carpooling2/login_screen.dart';
import 'package:flutter/material.dart';
import 'functions.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) =>  Scaffold(
        backgroundColor: Color(0xFFf5f6fa),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/WhiteLogo.png'),
                ),
              ),
              Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  child: textField('Enter your full Name')
              ),
              Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  child: textField('Enter your CNIC number')
              ),
              Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  child: textField('Enter your full address')
              ),
              Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  child: textField('Enter Username')
              ),
              Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  child: textField('Enter Password')
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ButtonTheme(
                  minWidth: 100,
                  height: 40,
                  child: FlatButton(
                    color: Colors.deepOrange,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()
                          ));

                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: Colors.white,width: 2.0),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

