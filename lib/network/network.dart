import 'dart:convert';

import 'package:http/http.dart';
import 'package:weatherapp/model/weather_forecast_model.dart';
import 'dart:developer' as devtool show log;

class Network {
  Future<WeatherModel> getWeather({required String cityName}) async {
    var url =
        'https://api.weatherapi.com/v1/forecast.json?key=5e8d1777bb5543cca1c194744222206&q=' +
            cityName +
            '&days=1&aqi=no&alerts=no';

    final response = await get(Uri.parse(Uri.encodeFull(url)));
    devtool.log('Url : ${Uri.encodeFull(url)}');
    if (response.statusCode == 200) {
      devtool.log('ók Sweety lets go...');
      devtool.log('Data : ${response.body}');
      return WeatherModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception(
        'Oops error something went wrong',
      );
    }
  }
}
