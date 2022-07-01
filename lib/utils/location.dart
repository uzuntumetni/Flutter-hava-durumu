import 'dart:html';

import 'package:location/location.dart';

class LocationHelper{
double? latitude;
double? longitude;

Future<void> getCurrentLocation() async{
Location location = Location();

bool _serviceEnabled;
PermissionStatus _permissionGranted;
LocationData locationData;

// SERVIS AYAKTA MU
_serviceEnabled = await location.serviceEnabled();
if(!_serviceEnabled){
_serviceEnabled = await location.requestService();
 if(!_serviceEnabled){
return;



 }


}




 }
}