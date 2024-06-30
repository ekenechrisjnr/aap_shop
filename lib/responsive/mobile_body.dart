import 'package:aap_shop/constants/constants.dart';
import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actionsIconTheme: const IconThemeData(),
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(""),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(appName),
            SizedBox(
              width: 200.0,
            ),
            Icon(
              Icons.settings,
              size: 25.0,
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
                  color: const Color.fromARGB(255, 32, 139, 37),
                  height: 120,
                  child: const Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5.5,
                        height: 5.5,
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Playwrite Italia Moderna',
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  //fontWeight: FontWeight.bold,
                                ),
                                "Available Balance",
                              ),
                              SizedBox(
                                width: 3.5,
                              ),
                              Icon(
                                Icons.remove_red_eye,
                              )
                            ],
                          ),
                          Text(
                            "\u20A6 5,000",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Playwrite Italia Moderna',
                                fontSize: 28.09),
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
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 120,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
