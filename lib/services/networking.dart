import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_display_app/utilities/constants.dart';

class NetworkHelper {
  final String url;
  NetworkHelper({this.url = ""});

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print('response is 200 - networking.dart');
      String data = response.body;

      var weatherData = jsonDecode(data);
      var cityName = weatherData['name'];
      print('city name :$cityName');

      return weatherData;
    } else {
      print('response isn\'t 200');
    }
  }
}
