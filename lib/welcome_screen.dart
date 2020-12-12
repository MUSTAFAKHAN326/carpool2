
import 'package:carpooling2/login_screen.dart';
import 'package:carpooling2/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Builder(
        builder: (context) =>  Scaffold(
        backgroundColor: Color(0xFFf5f6fa),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/WhiteLogo.png'),
                        height: 60.0,
                      ),
                    ),
                    TypewriterAnimatedTextKit(
                      text:['Road Partner.'],
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
          ButtonTheme(
            minWidth: 340.0,
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
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ButtonTheme(
          minWidth: 340.0,
          height: 40,
          child: FlatButton(
            color: Colors.deepOrange,
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()
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
        )
            ],
          ),
        )
      ),
    ));
  }
}
