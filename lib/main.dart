import 'package:basic_weather_app/model/weather_model.dart';
import 'package:basic_weather_app/services/weather_api_client.dart';
import 'package:flutter/material.dart';

import 'views/additional_information.dart';
import 'views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  WeatherApiClient client = WeatherApiClient();
  WeatherModel? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather("Ankara");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          "Hava Durumu",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.sunny, "${data?.temp}", "${data?.cityName}"),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Detaylı Bilgi",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xdd212121),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                additionalInformation("${data?.wind}", "${data?.humidity}", "${data?.pressure}", "${data?.feels_like}")
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
