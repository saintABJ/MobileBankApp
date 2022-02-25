//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:new_grazac_challenge_1/constants.dart';
import 'package:new_grazac_challenge_1/screens/splash/splash_screen.dart';

void main() { 
 
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      home: SplashScreen(),
    );
  }
}

