
import 'package:flutter/cupertino.dart';

class AppStateProvider extends ChangeNotifier {

  static final AppStateProvider _appStateProvider = AppStateProvider.createInstance();
  AppStateProvider.createInstance();
  factory AppStateProvider() => _appStateProvider;

  String pageTitle = 'Weather App';

  set setAppPageTitle(String title) {
    pageTitle = title;
    notifyListeners();
  }
}