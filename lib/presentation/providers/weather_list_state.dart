


import 'package:flutter/cupertino.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/services/weather/IWeatherService.dart';

class WeatherConditionListState extends ChangeNotifier {

  bool loading = true;
  IWeatherService iWeatherService;
  WeatherCondition weatherCondition;

  // static final WeatherConditionListState _weatherConditionListState = WeatherConditionListState.createInstance();
  // WeatherConditionListState.createInstance();
  // factory WeatherConditionListState(IWeatherService iWeatherService) {
  //   _weatherConditionListState.weatherService = iWeatherService;
  //   _weatherConditionListState.initialize();
  //   return _weatherConditionListState;
  // }

  WeatherConditionListState(this.iWeatherService) {
    initialize();
  }

  void initialize() async {
    try {
      WeatherCondition response = await iWeatherService.getWeatherByCityName('nigeria');
      print("Weather Response: $response");
      setWeatherCondition = response;
      setLoading = false;
    } catch (error) {
      loading = false;
      rethrow;
    }
  }


  set setWeatherCondition(WeatherCondition condition) {
    weatherCondition = condition;
    notifyListeners();
  }

  set setLoading(bool isLoading) {
    loading = isLoading;
    notifyListeners();
  }


  void searchWeather(BuildContext context, String cityName) async {
    FocusScope.of(context).unfocus();

    setLoading = true;
    try {
      print("City Name: $cityName");
      WeatherCondition response = await iWeatherService.getWeatherByCityName(cityName.toLowerCase());
      setWeatherCondition = response;
      setLoading = false;
      Navigator.pop(context);
    } catch (error) {
      setLoading = false;
      rethrow;
    }
  }

}