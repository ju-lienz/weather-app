import 'package:dio/dio.dart';
import 'package:weather_app/config/models/city_weather_model.dart';

String baseURL = 'http://api.weatherapi.com/v1';
const apiKey = '577e7d5701f27f9d16870d00fa874df7';

Future<CityWeatherModel> fetchWeather(double lat, double lon) async {
  final dio = Dio();
  final params = {'lat': lat, 'lon': lon, 'appid': apiKey};

  try {
    final response = await dio.get(
      "https://api.openweathermap.org/data/2.5/weather",
      queryParameters: params,
    );

    final weatherData = response.data as Map<String, dynamic>;
    return CityWeatherModel.fromJson(weatherData);
  } catch (error) {
    throw Exception("Error fetching weather data: $error");
  }
}
