import 'package:flutter/material.dart';

class StatCount extends StatelessWidget {
  final count;
  final type;
  final Color? textColor;

  StatCount({this.count, this.type, this.textColor});

  @override
  Widget build(BuildContext context) {
    var value = (double.parse(count.toString()) / 10000000).toStringAsFixed(2);
    return Column(
      children: [
        Text(
          "$value M",
          style: TextStyle(
            fontSize: 28,
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
