// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_grazac_challenge_1/screens/components/body.dart';
import 'package:new_grazac_challenge_1/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
