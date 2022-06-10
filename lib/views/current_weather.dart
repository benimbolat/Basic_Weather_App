import 'package:flutter/Material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          temp,
          style: const TextStyle(
            fontSize: 46.0,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          location,
          style: const TextStyle(fontSize: 22.0, color: Color(0xFF5a5a5a)),
        ),
      ],
    ),
  );
}
