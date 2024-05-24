import 'package:flutter/material.dart';

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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          Row(
            children: [
              Text(
                "Argentina",
              ),
              Text("9:30 am"),
            ],
          ),
          Row(
            children: [
              Text("Mendoza"),
              Text("13º"),
              Icon(Icons.sunny),
            ],
          )
        ],
      ),
    );
  }
}
