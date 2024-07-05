import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'pages/pages.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  int index = 0;
  //child: _pages.elementAt(_selectedIndex),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //forceMaterialTransparency: true,
        actionsIconTheme: const IconThemeData(),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // CHILDREN HOLDING THE ELEMENTS IN THE APPBAR
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/image.heic'),
            ),
            const SizedBox(
              width: 20.0,
            ),
            const Text(
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Playwrite Italia Moderna',
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
              (mobileName),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              width: 20.0,
            ),
            GestureDetector(
              child: Icon(
                Icons.notification_add,
                size: 30.0,
                color: lightBlackColor,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: pages.elementAt(index),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomNavigationBar(
          showSelectedLabels: true,
          currentIndex: index,
          // onTap: (value) {
          //   _selectedIndex = value;
          //   setState(() {});
          // },
          onTap: (value) => setState(() {
            index = value;
          }),
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                color: index == 0 ? myRed : Colors.grey.withOpacity(.6),
              ),
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(
                Icons.shopify,
                color: index == 1 ? myRed : Colors.grey.withOpacity(.6),
              ),
            ),
            BottomNavigationBarItem(
              label: "Favourite",
              icon: Icon(
                Icons.favorite,
                color: index == 2 ? myRed : Colors.grey.withOpacity(.6),
              ),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                Icons.settings,
                color: index == 3 ? myRed : Colors.grey.withOpacity(.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
