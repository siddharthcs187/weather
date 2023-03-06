import 'package:flutter/material.dart';
import 'package:weather/loading.dart';
import 'package:weather/home.dart';

import 'customclass.dart';

void main () => runApp(MaterialApp(
  initialRoute: '/home',
  routes:  {
    '/': (context) => Loading(),
    '/home': (context) => Home(weather: Weather(longitude: 0, latitude: 0)),  },
));