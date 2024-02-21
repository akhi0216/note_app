import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';
import 'package:note_app/utils/image_constants/image_constants.dart';
import 'package:note_app/view/home_page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 150,
              width: 150,
              child: Image.asset(Imageconstants.splashlogo)),
          Text(
            "My Notes",
            style: TextStyle(color: Colorconstants.mainwhite),
          )
        ],
      )),
    );
  }
}
