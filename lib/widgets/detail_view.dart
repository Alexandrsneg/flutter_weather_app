import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_forecast_daily.dart';
import 'package:flutter_weather_app/utilities/forecast_util.dart';

class DetailView extends StatelessWidget {

  final AsyncSnapshot<WeatherForecast> snapshot;

  const DetailView({this.snapshot});


  @override
  Widget build(BuildContext context) {
    var pressure = snapshot.data.list[0].pressure * 0.750062;
    var humidity = snapshot.data.list[0].humidity;
    var wind = snapshot.data.list[0].speed;


    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children:<Widget> [
          Util.getItem(Icons.thermostat_outlined, pressure.round(), 'mm Hg'),
          Util.getItem(Icons.cloud, humidity, "%"),
          Util.getItem(Icons.waves, wind.toInt(), 'm/s')
        ],
      ),
    );
  }
}
