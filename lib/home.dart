import 'package:flutter/material.dart';
import 'package:weather/customclass.dart';

class Home extends StatefulWidget {
  final Weather weather;

  Home({required this.weather});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Location: ${widget.weather.latitude}',
                  style: const TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Temperature: ${widget.weather.temp} K',
                  style: const TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Feels Like: ${widget.weather.flt} K',
                  style: const TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Description: ${widget.weather.desc}',
                  style: const TextStyle(fontSize: 30.0),
                ),
              ],
            )));
  }
}
