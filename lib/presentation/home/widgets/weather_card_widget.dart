import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String country;
  final String time;
  final String location;
  final String forecast;

  const WeatherCard({
    super.key,
    required this.country,
    required this.time,
    required this.location,
    required this.forecast,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                country,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const Spacer(),
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                location,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              const Spacer(),
              Text(
                forecast,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              const Icon(
                Icons.sunny,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
