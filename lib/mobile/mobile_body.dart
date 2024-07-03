import 'package:aap_shop/constants/constants.dart';
import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          forceMaterialTransparency: true,
          actionsIconTheme: const IconThemeData(),
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // CHILDREN HOLDING THE ELEMENTS IN THE APPBAR
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/image.heic'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
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
              SizedBox(
                width: 20.0,
              ),
              Icon(
                Icons.settings,
                size: 30.0,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // OPAY ACCOUNT BALANCE TYPE
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 5.9,
                      bottom: 5.9,
                      left: 7,
                      right: 7,
                    ),
                    //width: 400,
                    color: const Color.fromARGB(255, 81, 105, 240),
                    height: 89,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 5.5,
                          height: 5.5,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                SizedBox(
                                  height: 5.5,
                                ),
                                Text(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Playwrite Italia Moderna',
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  "Available Balance",
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Text(
                              "${currency(context).currencySymbol}5000",
                              //"\u20A6 5K",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Playwrite Italia Moderna',
                                  fontSize: 35),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // comment section & recommended videos
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.deepPurple[300],
                        height: 120,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.woman_outlined,
                                            size: 38,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Women',
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              // USE LATER FOR ANOTHER THING
                              // itemCount: 2,
                              // itemBuilder: (context, index) {
                              // return Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Container(
                              //     color: Colors.deepPurple[300],
                              //     height: 120,
                              //   ),
                              // );
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.man_sharp,
                                size: 38,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Men',
                                style: TextStyle(
                                    // color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.baby_changing_station,
                              size: 38,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Kids',
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_outlined,
                              size: 38,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.tv,
                              size: 38,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Entertainment',
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.pets_outlined,
                              size: 38,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Pet Care',
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
