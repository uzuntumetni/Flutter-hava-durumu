import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp1/utils/location.dart';
import 'package:http/http.dart';
class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
 LocationHelper? locationData;
 Future<void> getLocationData() async{
 locationData = LocationHelper();
 await locationData?.getCurrentLocation();
 if(locationData!.latitude == null || locationData!.longitude == null){
print("konum bilgileri gelmiyor.");
 }
else {
  print("latitude: " + locationData!.latitude.toString());
  print("longitude: "+ locationData!.longitude.toString());
}

 }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           colors:[Color.fromARGB(255, 128, 27, 20), Colors.black] 
          ),
        ),

       child: Center(
        child: SpinKitSpinningLines(
          color: Colors.white ,
          size: 130.0 ,
          duration: Duration(milliseconds:1000),
        )
       ),
     ),
    );
  }
}