import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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