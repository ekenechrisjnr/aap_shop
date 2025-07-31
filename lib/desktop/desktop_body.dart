import 'package:aap_shop/constants/constants.dart';
import 'package:flutter/material.dart';
import '../mobile/activities/home.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text(webDesktopName),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            width: 900,
            child: Home(),
          ),
        ),
      ),
    );
  }
}
