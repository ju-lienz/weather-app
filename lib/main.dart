import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather app'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
