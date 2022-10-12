import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/utils/utils.dart';

import '../LocalBindings.dart';
import 'page_home.dart';
import 'page_login.dart';
import 'page_onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Screen size;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    print("the meadiaSize query is");
    print(MediaQuery.of(context).size);
    return Scaffold(
        body: Center(
            child: Container(
                width: size.getWidthPx(300),
                height: size.getWidthPx(300),
                child: Image.asset("assets/icons/logo_splash.png"))));
  }
}