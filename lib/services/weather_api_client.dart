import 'dart:convert';

import 'package:basic_weather_app/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<WeatherModel>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=07411c67790b158ee7840cdf05298064&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print("${WeatherModel.fromJson(body).cityName}");
    return WeatherModel.fromJson(body);
  }
}
