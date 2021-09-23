import 'package:covid_app_trf/widgets/stat_count.dart';
import 'package:flutter/material.dart';

class CurrentStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        
        boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
          blurRadius: 10,
          spreadRadius: 1,
          color: Colors.grey.shade300,
        )
      ], borderRadius: BorderRadius.circular(16)),
      // padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatCount(
                count: 3780,
                type: "cases",
                textColor: Colors.orange,
              ),
              StatCount(
                count: 2232,
                type: "deaths",
                textColor: Colors.red,
              ),
              StatCount(
                count: 3733,
                type: "recovered",
                textColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

