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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              SizedBox(
                height: 20,
              ),
              WeatherCard(
                country: 'argentina',
                time: '10:48 am',
                location: 'buenos aires',
                forecast: '19º',
              ),
              Divider(),
              WeatherCard(
                country: 'czech republic',
                time: '10:48 am',
                location: 'prague',
                forecast: '11º',
              ),
              Divider(),
              WeatherCard(
                country: 'latvia',
                time: '10:48 am',
                location: 'riga',
                forecast: '22º',
              ),
              Divider(),
              WeatherCard(
                country: 'fl, usa',
                time: '18:48 am',
                location: 'miami',
                forecast: '9º',
              ),
              Divider(),
              WeatherCard(
                country: 'ny, usa',
                time: '18:48 am',
                location: 'new york',
                forecast: '9º',
              ),
              Divider(),
              WeatherCard(
                country: 'australia',
                time: '18:48 am',
                location: 'sydney',
                forecast: '9º',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
