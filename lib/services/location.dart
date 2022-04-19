import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Location({this.latitude = 0.0, this.longitude = 0.0});

  Future<void> getCurrentLocation() async {
    print('Function to get current location - location.dart');

    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
      print('latitude : $latitude \n logitude : $longitude');
    } catch (e) {
      print('exception caught : in location.dart');
      print(e);
    }
    print('No errors, Position got through Geolocator- location.dart - fine');
  }
}
