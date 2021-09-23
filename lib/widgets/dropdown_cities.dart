import 'package:covid_app_trf/widgets/current_stats.dart';
import 'package:flutter/material.dart';

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
  ];

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
                  });

                  print(city);
                },
                items: cities.map<DropdownMenuItem<String>>((city) {
                  return DropdownMenuItem<String>(value: city, child: Text(city));
                }).toList()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Current Status", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Newest update: 23/09/2021", style: TextStyle(color: Colors.grey),),
        ),
        CurrentStats(),
      ],
    );
  }
}
