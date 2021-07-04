

import 'package:weather_app/src/helpers/api_helper.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/services/weather/IWeatherService.dart';
import 'package:weather_app/src/utils/end_points.dart';

class OpenWeatherService extends IWeatherService {

  OpenWeatherService() {
    print("Using open weather service...");
  }
  @override
  Future<WeatherCondition> getWeatherByCityId(String cityId) async {

    String url = "$BASE_URL?id=$cityId";
    return await ApiHelper.makeGetRequest(url, {}).then((value) => WeatherCondition.fromJson(value.data));
  }

  @override
  Future<WeatherCondition> getWeatherByCityName(String cityName) async {
    print("Getting Weather Information By Name: $cityName...");
    String url = "$BASE_URL?q=$cityName";
    var response = await ApiHelper.makeGetRequest(url, {}).then((value) => value.data);
    print("API Response: $response");
    return WeatherCondition.fromJson(response);
  }

}