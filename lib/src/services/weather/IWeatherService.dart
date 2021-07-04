

abstract class IWeatherService {
  Future<dynamic> getWeatherByCityName(String cityName);
  Future<dynamic> getWeatherByCityId(String cityId);
}