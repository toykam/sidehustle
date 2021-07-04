import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/components/weather_detail.dart';
import 'package:weather_app/presentation/providers/app_state_provider.dart';
import 'package:weather_app/presentation/providers/weather_list_state.dart';

class WeatherConditionList extends StatelessWidget {
  const WeatherConditionList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://cdn.dribbble.com/users/925716/screenshots/3333720/attachments/722376/after_noon.png"),
          fit: BoxFit.cover
        )
      ),
      child: Consumer<WeatherConditionListState>(
        builder: (context, value, child) {
          print(value.weatherCondition.name);
          return value.loading ? Center(
            child: CupertinoActivityIndicator(),
          ) : WeatherConditionDetail(
            weatherCondition: value.weatherCondition,
            key: UniqueKey(),
          );
        },
      ),
    );
  }
}
