import 'location.dart';
import 'networking.dart';
import 'package:weather_display_app/utilities/constants.dart';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = await NetworkHelper(
        url: '$kopenWeatherMapURL?q=$cityName&appid=$kapiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    print('works fine till networkhelper');
    NetworkHelper networkHelper = await NetworkHelper(
        url:
            '$kopenWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$kapiKey&units=metric');

    print('after networkhelper');

    var weatherData = await networkHelper.getData();

    print('after networkhelper.getData()');

    print(weatherData["name"]);

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
