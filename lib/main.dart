import 'package:flutter/material.dart';

import 'Screens/cityScreen.dart';
import 'Screens/loadingScreen.dart';
import "Screens/locationScreen.dart";

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    initialRoute: "/",
    routes: {
      "/": (context) => LoadingScreen(),
      "/location": (context) => LocationScreen(),
      "/city": (context) => CityScreen(),
    },
  ));
}
