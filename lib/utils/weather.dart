import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'location.dart';

const apiKey ="e943aee83184cb50e735733e32683db4";

class WeatherData{
  WeatherData({@required this.locationData});
  
  LocationHelper? locationData;
  double? currentTemerature;
  int? currentCondition;
}





