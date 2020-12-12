import 'dart:ffi';


import 'package:flutter/material.dart';
Widget textField(String hint){
  return TextField(

    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: hint,

      hintStyle: TextStyle(
        fontSize: 10.0,
          color: Colors.black87
      ),
      filled: true,
      // fillColor: Colors.white70,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          borderSide: BorderSide(color: Colors.black, width: 2.0)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2.0)
      ),

    ),
  );

}

Widget flateButton(String txt, w){
     return ButtonTheme(
       minWidth: w,
       height: 40,
       child: FlatButton(
         color: Colors.deepOrange,
         onPressed: (){
           // Navigator.push(
           //     context,
           //     MaterialPageRoute(builder: (context) => ())

         },
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(40.0),
           side: BorderSide(color: Colors.white,width: 2.0),
         ),
         child: Text(
           txt,
           style: TextStyle(
             color: Colors.white,
             fontSize: 15.0,
           ),
         ),
       ),
     );
}
