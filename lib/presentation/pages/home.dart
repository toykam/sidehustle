import 'package:flutter/material.dart';
import 'package:weather_app/presentation/components/app_bar.dart';
import 'package:weather_app/presentation/pages/weather_condition_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WeatherAppBar(),
      body: WeatherConditionList(),
    );
  }
}
