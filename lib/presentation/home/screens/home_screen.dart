import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home/widgets/weather_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "today",
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              fontSize: 55),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 8.0, 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Divider(),
            WeatherCard(
              country: 'Argentina',
              time: '10:48 am',
              location: 'Mendoza',
              forecast: '19º',
            ),
            Divider(),
            WeatherCard(
              country: 'Argentina',
              time: '10:48 am',
              location: 'Buenos Aires',
              forecast: '11º',
            ),
            Divider(),
            WeatherCard(
              country: 'Chile',
              time: '10:48 am',
              location: 'Santiago de Chile',
              forecast: '22º',
            ),
            Divider(),
            WeatherCard(
              country: 'Francia',
              time: '18:48 am',
              location: 'París',
              forecast: '9º',
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
