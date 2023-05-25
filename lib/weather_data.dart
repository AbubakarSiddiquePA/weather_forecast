// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_forecast/weathermodel.dart';

class WeatherData {
  Future<Weather> getData(var name) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=c48146ea3b6047d89f5150729231805&q=$name,&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
