import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/providers/app_state_provider.dart';
import 'package:weather_app/presentation/providers/weather_list_state.dart';
import 'package:weather_app/src/services/weather/implementations/OpenWeatherService.dart';
import 'package:weather_app/src/utils/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppStateProvider()),
        ChangeNotifierProvider(create: (context) => WeatherConditionListState(OpenWeatherService())),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.onGenerateRoute(settings),
    );
  }
}
