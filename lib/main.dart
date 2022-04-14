import 'package:delivery_system/home.dart';
import 'package:delivery_system/login.dart';
import 'package:delivery_system/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=> MyLogin(),
      'register': (context)=>MyRegister(),
      'home': (context)=>MyHome()
    },
  ));
}
