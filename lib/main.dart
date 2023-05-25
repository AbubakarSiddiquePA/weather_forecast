import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_forecast/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    const MyApp(), // use MaterialApp
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "weather app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff081b25),
      ),
      home: HomePage(),
    );
  }
}
