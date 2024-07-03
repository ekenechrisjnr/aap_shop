import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget
{
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(

      onDragStart: (details) {

      },
      onClosing: () {

    }, builder: (context) => Container(
      color: Colors.white,

    ),);
  }

}