import 'package:geolocator/geolocator.dart';

class Location {
  double longitude, latitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      this.latitude = position.latitude;
      this.longitude = position.longitude;

    } catch (e) {
      throw 'location error';
    }
  }
}
