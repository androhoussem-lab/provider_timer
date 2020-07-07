import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/timer.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create:(context) => TimerInfo() ,
        child: HomePage()
        ),
    );
  }
}

