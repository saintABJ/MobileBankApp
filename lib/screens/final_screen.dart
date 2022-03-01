// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_grazac_challenge_1/size_config.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image(
                    image: AssetImage('images/chevron_left_24px.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/Frame 8183.jpg',
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Center(
                    child: Text(
                      '₦',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    "20,000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Will be sent from your'
                    '\nsavings account',
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'To',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      'images/Ellipse 37.jpg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'John Fonesca',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('0126478172 • GT BANK')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: FlatButton(
                minWidth: 300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                onPressed: () {
                  var screen = FinalScreen();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => screen));
                },
                child: Text(
                  'Send',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
