import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/providers/weather_list_state.dart';

class SearchWeather extends StatelessWidget {
  SearchWeather({Key key}) : super(key: key);

  TextEditingController _textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherConditionListState>(
      builder: (context, value, child) {
        return value.loading ? Container(
          height: 20,
          child: Center(
            child: CupertinoActivityIndicator(),
          ),
        ) : Container(
          height: 150,
          child: Column(
            children: [
              TextFormField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    hintText: "Input location name"
                ),
              ),

              ElevatedButton(
                onPressed: () => value.searchWeather(context, _textEditingController.text),
                child: Text('Search'),
              )
            ],
          ),
        );
      },
    );
  }
}
