
class WeatherCondition {

  String cityName;
  double temperature;
  double windSpeed;
  double rain;
  String climate;


  WeatherCondition({
    this.cityName, this.climate, this.rain, this.temperature, this.windSpeed
  });

}

List<WeatherCondition> weatherConditions = [
  WeatherCondition( cityName: "Lagos", climate: 'Cloudy', rain: 1, temperature: 294.0, windSpeed: 100 ),
  WeatherCondition( cityName: "Abuja", climate: 'Rainy', rain: 1, temperature: 294.0, windSpeed: 100 ),
  WeatherCondition( cityName: "Ogun", climate: 'Stormy', rain: 1, temperature: 294.0, windSpeed: 100 ),
  WeatherCondition( cityName: "Oshodi", climate: 'Ligntening', rain: 1, temperature: 294.0, windSpeed: 100 ),
];