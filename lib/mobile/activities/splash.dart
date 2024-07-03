import 'dart:async';

import '../../homepage.dart';
import '../activities/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    animator();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

  double width = 0;
  double height = 0;
  void animator() {
    setState(() {
      width = 250;
      height = 250;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          height: height,
          width: width,
          child: const Image(
            image: AssetImage('assets/images/splash.png'),
          ),
        ),
      ),
    );
  }
}
