import 'package:aap_shop/constants/constants.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        fontFamily: 'Playwrite Italia Moderna',
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}
