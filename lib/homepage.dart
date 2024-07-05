import 'package:aap_shop/mobile/mobile_body.dart';
import 'package:aap_shop/mobile/widget/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../desktop/desktop_body.dart';
//import '../mobile/mobile_body.dart';
import '../responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
