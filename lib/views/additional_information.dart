import 'package:flutter/material.dart';

const TextStyle titleFont = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
);
const TextStyle infoFont = TextStyle(
  fontWeight: FontWeight.w800,
  fontSize: 18.0,
);

Widget additionalInformation(String wind, String humidity, String pressure, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Rüzgar",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Pressure",
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind km/sa   ",
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  " $pressure hPa  ",
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Nem :",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Hissedilen :",
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity%",
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "$feelsLike °C",
                  style: infoFont,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
