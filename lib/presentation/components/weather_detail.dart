

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/src/constants/week_and_month.dart';
import 'package:weather_app/src/models/weather.dart';

class WeatherConditionDetail extends StatelessWidget {
  WeatherConditionDetail({Key key, @required this.weatherCondition}) : super(key: key);

  WeatherCondition weatherCondition;


  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${weatherCondition.name}", style: GoogleFonts.rubik(
                    fontSize: 32, fontWeight: FontWeight.w400
                  ),),
                  Text("${weatherCondition.weather.first.description}"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: RichText(
                text: TextSpan(
                  text: "${weekDays[now.weekday - 1]}\n",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 24, color: Colors.black87
                  ),
                  children: [
                    TextSpan(
                      text: "${now.day} - ${months[now.month - 1]}",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400, color: Colors.black38
                      ),
                    )
                  ]
                ),
              )
            ),
            Container(
              height: 1,
              color: Colors.black45,
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(
                        text: 'Temperature\n', style: GoogleFonts.montserrat(color: Colors.black87, fontSize: 32)
                    ),
                    TextSpan(
                      text: '${weatherCondition.main.temp} ', style: TextStyle(color: Colors.black87)
                    ),
                    TextSpan(
                        text: '\u00B0R', style: TextStyle(color: Colors.black26)
                    ),
                  ]
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(
                        text: 'Humidity\n', style: GoogleFonts.montserrat(color: Colors.black87, fontSize: 32)
                    ),
                    TextSpan(
                      text: '${weatherCondition.main.humidity} ', style: TextStyle(color: Colors.black87)
                    ),
                    TextSpan(
                        text: '\u00B0R', style: TextStyle(color: Colors.black26)
                    ),
                  ]
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(
                        text: 'Pressure\n', style: GoogleFonts.montserrat(color: Colors.black87, fontSize: 32)
                    ),
                    TextSpan(
                      text: '${weatherCondition.main.pressure} ', style: TextStyle(color: Colors.black87)
                    ),
                    TextSpan(
                        text: '\u00B0R', style: TextStyle(color: Colors.black26)
                    ),
                  ]
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(
                        text: 'Visibility\n', style: GoogleFonts.montserrat(color: Colors.black87, fontSize: 32)
                    ),
                    TextSpan(
                      text: '${weatherCondition.visibility} ', style: TextStyle(color: Colors.black87)
                    ),
                    TextSpan(
                        text: '\u00B0R', style: TextStyle(color: Colors.black26)
                    ),
                  ]
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(
                        text: 'Wind\n', style: GoogleFonts.montserrat(color: Colors.black87, fontSize: 24)
                    ),
                    TextSpan(
                      text: 'Speed ${weatherCondition.wind.speed} ', style: TextStyle(color: Colors.black87, fontSize: 24)
                    ),
                    TextSpan(
                        text: 'Direction ${weatherCondition.wind.deg} ', style: TextStyle(color: Colors.black87, fontSize: 24)
                    ),
                  ]
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}
