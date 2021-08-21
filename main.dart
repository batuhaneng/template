import 'package:flutter/material.dart';

import 'input_page.dart'; //sayfadan veri getir

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*theme: ThemeData.dark().copyWith(  //bu temayı her yere koy komutu için
          brightness: Brightness.dark,
          primaryColor: Colors.orange,
          accentColor: Colors.lime,
          scaffoldBackgroundColor: Colors.red),*/

      theme: ThemeData(
        /*bu temayı her yere koy komutu için
        // brightness: Brightness.dark,
        // primaryColor: Colors.orange,
        // accentColor: Colors.lime,*/
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        primaryColor: Colors.lightBlue,
      ),
      home: InputPage(),
    );
  }
}
