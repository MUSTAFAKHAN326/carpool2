import 'package:carpooling2/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'functions.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Builder(
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
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: textField('Enter Email')
              ),

              Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: textField('Enter Password')
              ),

              Container(
                 margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: ButtonTheme(
                    minWidth: 100,
                    height: 40,
                    child: FlatButton(
                      color: Colors.deepOrange,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WelcomeScreen()));

                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.white,width: 2.0),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ))
            ],
          )

        ),
      ),

    ));
  }
}
