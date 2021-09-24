import 'package:covid_app_trf/widgets/stat_count.dart';
import 'package:flutter/material.dart';

class CurrentStats extends StatelessWidget {
  final cases;
  final deaths;
  final recovered;

  CurrentStats({Key? key, this.cases, this.deaths, this.recovered})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isNull = (cases == null || deaths == null || recovered == null);

    return (isNull == true)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: CircularProgressIndicator()),
          )
        : Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(boxShadow: [
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StatCount(
                      count: cases,
                      type: "cases",
                      textColor: Colors.orange,
                    ),
                    StatCount(
                      count: deaths,
                      type: "deaths",
                      textColor: Colors.red,
                    ),
                    StatCount(
                      count: recovered,
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
