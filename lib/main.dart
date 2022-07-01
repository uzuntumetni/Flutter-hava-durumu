import 'package:flutter/material.dart';
import 'package:myapp1/ekranlar/loading_screen.dart';void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
  title: 'Hava Durumu',
  debugShowCheckedModeBanner:  false,
  theme: ThemeData.dark(),
  home: LoadingScreen(),
   );
  }  
}
    
  
