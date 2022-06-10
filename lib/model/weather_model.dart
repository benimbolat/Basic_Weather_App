class WeatherModel {
  String? cityName;
  double? wind;
  double? temp;
  int? humidity;
  double? feels_like;
  int? pressure;

  WeatherModel({
    this.cityName,
    this.wind,
    this.temp,
    this.humidity,
    this.feels_like,
    this.pressure,
  });

  WeatherModel.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    wind = json['wind']['speed'];
    temp = json['main']['temp'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    feels_like = json['main']['feels_like'];
  }
}
