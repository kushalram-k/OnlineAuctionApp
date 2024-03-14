import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auction_app/pages/login.dart';
import 'package:auction_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    color: Color.fromARGB(255, 254, 254, 255),
    theme: ThemeData(
      textTheme: TextTheme(
        bodyText1: TextStyle(fontFamily: 'Roboto'),
        // Add more text styles as needed
      ),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes:{
      '/':(context) => login(),
      // '/loading':(context) => loading(),
      '/home':(context) => HomePage(),
      // '/location':(context) => choose_location(),
    }   
    ,
  ));
}

