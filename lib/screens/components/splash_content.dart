// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Spacer(),
        Spacer(),
        SizedBox(
          height: 30,
          child: Image(
            image: AssetImage('images/Subtract@2x.png'),
            height: 20,
          ),
        ),
        //An image staked into each other will be here
        Spacer(),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        //Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Container(
            margin: EdgeInsets.only(bottom: 15, top: 0),
            child: Image.asset(
              image,
              // fit: BoxFit.fill,
              // height: getProportionateScreenHeight(350),
              // width: getProportionateScreenWidth(350),
            ),
          ),
        ),
        Spacer(),
        Spacer(),

        SizedBox(
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur'
            '\nadipiscing elit. Sodales blandit gravida'
            '\nfeugiat urna, convalis.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
