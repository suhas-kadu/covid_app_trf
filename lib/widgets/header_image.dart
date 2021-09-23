import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        alignment: Alignment.centerLeft,
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(32),
            ),
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.indigo.shade500,
              Colors.blue.shade200,
              Colors.purple.shade300,
            ])),
        child: Image.asset("assets/Drcorona.png"),
      ),
      Positioned(
        top: 130,
        left: 160,
        child: Text("All you need to  \ndo is stay at home", style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),))
    ]);
  }
}
