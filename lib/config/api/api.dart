import 'package:dio/dio.dart';
import 'package:weather_app/config/models/city_weather_model.dart';

String baseURL = 'http://api.weatherapi.com/v1';
const apiKey = '270033c7f91741ae8bb145007242405';

Future<CityWeatherModel> fetchWeather(double lat, double lon) async {
  final dio = Dio();
  final params = {'lat': lat, 'lon': lon, 'appid': apiKey};

  try {
    final response = await dio.get(
      "https://api.openweathermap.org/data/2.5/weather",
      queryParameters: params,
    );
    return response.data;
  } catch (error) {
    throw Exception("Error fetching weather data: $error");
  }
}
