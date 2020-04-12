import 'package:clima/Services/location.dart';
import 'package:clima/Services/networking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apikey = "584cdadee11feb3411f24f84ff22165d";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;
  void getLocationData() async {
    Location loc = new Location();
    await loc.getCurrentLocation();
    latitude = loc.latitude;
    longitude = loc.longitude;
    Network weatherData = Network(
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apikey");
    var data = await weatherData.getData();
    Navigator.pushNamed(context, "/location");
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.amber,
          size: 100.0,
        ),
      ),
    );
  }
}
