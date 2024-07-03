// import 'package:flutter/material.dart';

// import '../../constants/constants.dart';
// import '../res/resorces_list.dart';
// import '../widget/bottom_navigation.dart';
// import '../activities/details.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: const BottomNavigation(),
//       backgroundColor: whiteColor,
//       appBar: AppBar(
//         //forceMaterialTransparency: true,
//         actionsIconTheme: const IconThemeData(),
//         centerTitle: true,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           // CHILDREN HOLDING THE ELEMENTS IN THE APPBAR
//           children: [
//             const CircleAvatar(
//               radius: 20,
//               backgroundColor: Colors.black,
//               backgroundImage: AssetImage('assets/images/image.heic'),
//             ),
//             const SizedBox(
//               width: 20.0,
//             ),
//             const Text(
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: 'Playwrite Italia Moderna',
//                 fontSize: 18,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.bold,
//               ),
//               (mobileName),
//               textAlign: TextAlign.justify,
//             ),
//             const SizedBox(
//               width: 20.0,
//             ),
//             Icon(
//               Icons.settings,
//               size: 30.0,
//               color: Colors.black.withOpacity(.4),
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(
//           left: 30,
//           right: 30,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.only(
//                     top: 8,
//                     bottom: 5.5,
//                     left: 8,
//                     right: 8,
//                   ),
//                   //width: 400,
//                   color: Colors.black.withOpacity(.4),
//                   height: 100,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         width: 5.5,
//                         height: 5.5,
//                       ),
//                       Column(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Row(
//                             children: [
//                               SizedBox(
//                                 height: 5.5,
//                               ),
//                               Text(
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Playwrite Italia Moderna',
//                                   fontSize: 15,
//                                   fontStyle: FontStyle.normal,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                                 "Available Balance",
//                               ),
//                               SizedBox(
//                                 width: 3.5,
//                               ),
//                               Icon(
//                                 Icons.remove_red_eye,
//                                 color: Colors.white,
//                               )
//                             ],
//                           ),
//                           Text(
//                             "${currency(context).currencySymbol}5000",
//                             //"\u20A6 5K",
//                             style: const TextStyle(
//                                 color: Colors.white,
//                                 fontFamily: 'Playwrite Italia Moderna',
//                                 fontSize: 35),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             //customDrawer(),
//             const SizedBox(
//               height: 20,
//             ),
//             const Text(
//               "Find the best",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Text(
//               "Nescafe",
//               style: TextStyle(
//                   letterSpacing: 2,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 30),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             // Container(
//             //   padding: const EdgeInsets.only(left: 20),
//             //   height: 45,
//             //   width: double.infinity,
//             //   decoration: BoxDecoration(
//             //     borderRadius: BorderRadius.circular(10),
//             //     color: Colors.black.withOpacity(.1),
//             //   ),
//             // child: TextFormField(
//             //   enabled: false,
//             //   decoration: InputDecoration(
//             //       // prefixIcon: Icon(
//             //       //   Icons.coffee,
//             //       //   color: Colors.black.withOpacity(.3),
//             //       // ),
//             //       border: InputBorder.none,
//             //       hintText: " Search for your nescafe",
//             //       hintStyle: TextStyle(
//             //         color: Colors.black.withOpacity(.3),
//             //         fontSize: 12,
//             //       )),
//             // ),
//             // ),
//             // const SizedBox(
//             //   height: 25,
//             // ),
//             SizedBox(
//                 height: 30,
//                 child: ListView.builder(
//                   itemCount: 5,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: Text(
//                           names[index],
//                           style: TextStyle(
//                               color: category[index]
//                                   ? Colors.orange
//                                   : Colors.black.withOpacity(.4),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17),
//                         ),
//                       ),
//                     );
//                   },
//                 )),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 250,
//                       width: double.infinity,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: 9,
//                         itemBuilder: (context, index) {
//                           return InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => Details(index),
//                                   ));
//                             },
//                             child: Card(
//                               elevation: 20,
//                               color: Colors.black.withOpacity(.1),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20)),
//                               margin: const EdgeInsets.only(right: 20),
//                               child: Container(
//                                 padding: const EdgeInsets.all(15),
//                                 width: 150,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: SizedBox(
//                                         height: 125,
//                                         width: double.infinity,
//                                         child: Stack(
//                                           children: [
//                                             Positioned.fill(
//                                               child: Image(
//                                                 image: images[index],
//                                                 fit: BoxFit.cover,
//                                               ),
//                                             ),
//                                             // Align(
//                                             //   alignment: Alignment.topRight,
//                                             //   child: Container(
//                                             //     height: 25,
//                                             //     width: 50,
//                                             //     decoration: BoxDecoration(
//                                             //       color: Colors.black
//                                             //           .withOpacity(.7),
//                                             //       borderRadius:
//                                             //           const BorderRadius.only(
//                                             //         bottomLeft:
//                                             //             Radius.circular(10),
//                                             //       ),
//                                             //     ),
//                                             // child: const Row(
//                                             //   mainAxisAlignment:
//                                             //       MainAxisAlignment
//                                             //           .spaceEvenly,
//                                             //   children: [
//                                             // const Icon(
//                                             //   Icons.star,
//                                             //   color: Colors.orange,
//                                             //   size: 14,
//                                             // ),
//                                             // Text(
//                                             //   rating[index].toString(),
//                                             //   style: const TextStyle(
//                                             //       color: Colors.black,
//                                             //       fontWeight:
//                                             //           FontWeight.bold),
//                                             // )
//                                             //   ],
//                                             // ),
//                                             //   ),
//                                             // ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text(
//                                       names[index],
//                                       style: const TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                     // const SizedBox(
//                                     //   height: 5,
//                                     // ),
//                                     // Text(
//                                     //   with_[index],
//                                     //   style: TextStyle(
//                                     //     color: Colors.black.withOpacity(.5),
//                                     //     fontSize: 15,
//                                     //   ),
//                                     // ),
//                                     // const SizedBox(
//                                     //   height: 10,
//                                     // ),
//                                     Row(
//                                       children: [
//                                         const Align(
//                                           alignment: Alignment.topLeft,
//                                           child: Text("\$ ",
//                                               style: TextStyle(
//                                                   color: Colors.orange,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.bold)),
//                                         ),
//                                         Text(prices[index],
//                                             style: const TextStyle(
//                                               color: Colors.black,
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 18,
//                                             )),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text("Special for you, LORDHENRY",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         )),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     specialCard(images[5]),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     specialCard(images[6]),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     specialCard(images[7]),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget circleRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         circleIcon(),
//         circleIcon(),
//       ],
//     );
//   }

//   Widget circleIcon() {
//     return Icon(
//       Icons.circle,
//       color: Colors.black.withOpacity(.5),
//       size: 10,
//     );
//   }

//   Widget customDrawer() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Card(
//           elevation: 20,
//           color: Colors.black.withOpacity(.1),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           child: Container(
//             height: 40,
//             width: 40,
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             decoration: BoxDecoration(
//                 color: Colors.black.withOpacity(.1),
//                 borderRadius: BorderRadius.circular(10)),
//             child: Column(
//               children: [circleRow(), circleRow()],
//             ),
//           ),
//         ),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: const FlutterLogo(
//               size: 35,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget specialCard(AssetImage asset) {
//     return Card(
//       color: Colors.black.withOpacity(.1),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Container(
//         margin: const EdgeInsets.all(10),
//         height: 120,
//         width: double.infinity,
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Container(
//                 height: double.infinity,
//                 width: 120,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(image: asset, fit: BoxFit.cover)),
//               ),
//             ),
//             const SizedBox(
//               width: 20,
//             ),
//             const Column(
//               children: [
//                 Text(
//                   "Products You\nShould try!",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
