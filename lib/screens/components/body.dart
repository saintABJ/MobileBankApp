// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:new_grazac_challenge_1/constants.dart';
import 'package:new_grazac_challenge_1/screens/components/splash_content.dart';
import 'package:new_grazac_challenge_1/size_config.dart';

import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {'text': 'Create a Cooperative', 'image': 'images/Frame 2.jpg'},
    {'text': 'Start Saving', 'image': 'images/Frame 18.jpg'},
    {'text': 'Start Earning', 'image': 'images/Frame 3.jpg'}
  ];

  get child => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]['image']!,
                    text: splashData[index]['text']!,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                      ),
                      //Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(60),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            onPressed: () {},
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(60),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Already have an account? Log in',
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.normal),
                            ),
                            color: anotherColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //    Expanded(flex: 1, child: Column())
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.yellow.shade800 : anotherColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
