import 'package:flutter_application_2/pages/Account.dart';
import 'package:flutter_application_2/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Loading.dart';
import 'package:flutter_application_2/pages/Login.dart';
import 'package:flutter_application_2/pages/Mobile.dart';
import 'package:flutter_application_2/pages/NewRegistration.dart';
import 'package:flutter_application_2/pages/SplashScreen.dart';
import 'package:flutter_application_2/pages/Transfer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() =>runApp(MaterialApp(
  home: AnimatedSplashScreen(
    splash:  "image/b.jpg",
    duration: 3000,
    splashTransition: SplashTransition.fadeTransition,
    backgroundColor: Colors.white,
       nextScreen: Login(),
       ),
  routes: {
    '/h': (context) => Home(),
    '/l': (context) => Login(),
    '/c': (context) => Transfer(),
    '/r': (context) => NewRegistration(),
    '/m': (context) => Mobile(),
    '/a': (context) => Account(),
  },
));

