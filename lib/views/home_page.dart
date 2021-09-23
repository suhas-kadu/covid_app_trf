import 'package:covid_app_trf/widgets/dropdown_cities.dart';
import 'package:covid_app_trf/widgets/header_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImage(),
            DropDownCities(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Spread of Virus",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                "assets/map.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
