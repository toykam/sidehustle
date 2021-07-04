

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/pages/search.dart';
import 'package:weather_app/presentation/providers/app_state_provider.dart';

class WeatherAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Consumer<AppStateProvider>(
        builder: (context, value, child) {
          return Text('${value.pageTitle}');
        },
      ),
      elevation: 0,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {
          // Navigator.pushNamed(context, '/search');
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text('Search Weather By Location'),
              content: SearchWeather(),
            );
          });
        })
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);

}