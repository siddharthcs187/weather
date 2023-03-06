import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/customclass.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Position? position;

  Future<void> _getCurrentPosition() async {
    LocationPermission permission = await Geolocator.requestPermission();
    permission = await Geolocator.checkPermission();
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    Weather weather = Weather(
        longitude: position!.longitude, latitude: position!.latitude);
    await weather.getData();
    Navigator.pushReplacementNamed(context, '/home',
        arguments: weather);
  }

  @override
  void initState() {
    super.initState();
    _getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: const Center(
            child: SpinKitCircle(
              color: Colors.white,
              size: 50.0,
            )));
  }
}
