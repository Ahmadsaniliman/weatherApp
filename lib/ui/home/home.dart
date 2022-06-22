import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_forecast_model.dart';
import 'package:weatherapp/network/network.dart';
// import 'package:weatherapp/ui/home/components/search.dart';
import 'dart:developer' as devtool show log;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<WeatherModel> weatherObject;
  final String _cityName = 'Tokyo';
  @override
  void initState() {
    weatherObject = Network().getWeather(cityName: _cityName);
    weatherObject.then((weather) {
      devtool.log(weather.name);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('weather sweety'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          //   child: FutureBuilder<WeatherForeCastModel>(
          //     future: weatherObject,
          //     builder: (context, AsyncSnapshot<WeatherForeCastModel> snapshot) {
          //       if (snapshot.hasData) {
          //         return const Text('ok');
          //       } else {
          //         return const Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       }
          //     },
          //   ),
        ),
      ),
    );
  }
}
