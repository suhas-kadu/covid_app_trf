import 'package:covid_app_trf/models/stat.dart';
import 'package:covid_app_trf/widgets/current_stats.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class DropDownCities extends StatefulWidget {
  @override
  _DropDownCitiesState createState() => _DropDownCitiesState();
}

class _DropDownCitiesState extends State<DropDownCities> {
  String? chosenCity = "USA";

  List<String> cities = [
    "USA",
    "India",
    "UK",
    "World",
    "China",
    "Germany",
    "Italy"
  ];

  Stat stat = Stat(
    cases: null,
    deaths: null,
    recovered: null,
  );

  void getStats(String city) async {
    var url =
        Uri.parse("https://coronavirus-19-api.herokuapp.com/countries/$city");

    var response = await http.get(url);

    var responseData = jsonDecode(response.body);

    print(responseData);

    setState(() {
      Stat obj = Stat(
        cases: responseData["cases"],
        deaths: responseData["deaths"],
        recovered: responseData["recovered"],
      );

      stat = obj;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStats(chosenCity.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: Colors.grey)),
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                isExpanded: true,
                value: chosenCity,
                onChanged: (city) {
                  setState(() {
                    chosenCity = city;
                    getStats(chosenCity.toString());
                  });

                  print(city);
                },
                items: cities.map<DropdownMenuItem<String>>((city) {
                  return DropdownMenuItem<String>(
                      value: city, child: Text(city));
                }).toList()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Current Status",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Newest update: ${DateFormat().add_yMMMEd().format(DateTime.now())}",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        CurrentStats(
          cases: stat.cases,
          deaths: stat.deaths,
          recovered: stat.recovered,
        ),
      ],
    );
  }
}
