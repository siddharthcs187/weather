import 'dart:convert';
import 'package:http/http.dart';

class Weather{

  double latitude;
  double longitude;
  String location = "";
  String desc ="";
  double temp = 0.0;
  double flt = 0.0;

  Weather({required this.longitude, required this.latitude});

  Future<void> getData() async{
    try{
      Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=5964259d285c80a1155aa8210334455e'));
      Map data = jsonDecode(response.body);

      desc = data['weather']['description'];
      temp = data['main']['temp'];
      flt = data['main']['feels_like'];
    }
    catch(e){
      print(e);
    }
}
}