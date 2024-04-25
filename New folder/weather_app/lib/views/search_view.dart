import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/service_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search City',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel =
                  await ServiceModel(Dio()).getWeatherModel(cityName: value);
              log(weatherModel.maxTemp.toString());
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(25),
                hintText: 'Enter City Name',
                suffixIcon: Icon(Icons.search),
                labelText: 'Search',
                border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
      ),
    );
  }
}
