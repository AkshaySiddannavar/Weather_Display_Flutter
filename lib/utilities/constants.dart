import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kapiKey = '019fb73a860fcc66eed07c221fe8bdb3';

const kopenWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

const kInputFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  hintText: 'Enter City Name',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        10.0,
      ),
    ),
    borderSide: BorderSide.none,
  ),
);
