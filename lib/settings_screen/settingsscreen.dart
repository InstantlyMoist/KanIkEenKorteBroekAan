import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kan_ik_een_korte_broek_aan/settings_screen/weatherslider.dart';
import 'package:kan_ik_een_korte_broek_aan/settings_screen/weathertoggle.dart';
import 'package:kan_ik_een_korte_broek_aan/text/titletext.dart';
import 'package:kan_ik_een_korte_broek_aan/weather_handler.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WeatherHandler.getDarkColor(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 45, top: 45, right: 40, left: 40),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleText(
                  text: "Instellingen",
                  color: WeatherHandler.getBackgroundColor(),
                ),
                WeatherSlider(),
                WeatherToggle(text: "Eenheid",
                firstOption: "°C",
                secondOption: "°F",),
                WeatherToggle(text: "Dagelijkse Notificaties",
                  firstOption: "Aan",
                  secondOption: "Uit",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}