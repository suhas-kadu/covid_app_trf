import 'package:flutter/material.dart';


class StatCount extends StatelessWidget {
  final count;
  final type;
  final Color? textColor;

  StatCount({this.count, this.type, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        Text(
          type.toUpperCase(),
          style: TextStyle(
            color: textColor,
          ),
        )
      ],
    );
  }
}