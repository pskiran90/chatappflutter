import 'dart:async';

import 'package:chatappflutter/pages/auth/logginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          SizedBox(
            width: 360,
            // height: 360,
            child: Image.asset('assets/chatapplogo.png'),
          ),
          Positioned(
            bottom: 30,
            left: 80,
            child: Image.asset('assets/name.png'),
          )
        ],
      ),
    ));
  }
}
