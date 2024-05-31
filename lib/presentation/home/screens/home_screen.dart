import 'package:flutter/material.dart';
import 'package:weather_app/config/api/api.dart';
import 'package:weather_app/config/models/city_weather_model.dart';
import 'package:weather_app/presentation/home/widgets/weather_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CityWeatherModel? _weather;

  @override
  void initState() {
    super.initState();
    fetchWeather(-34.61315, -58.37723).then((weather) {
      setState(() {
        _weather = weather;
      });
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              _weather != null
                  ? WeatherCard(
                      country: 'argentina',
                      time: '10:48 am',
                      location: 'buenos aires',
                      forecast: _weather!
                          .climaActual, // Access data from CityWeatherModel
                    )
                  : const Center(child: CircularProgressIndicator()),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
