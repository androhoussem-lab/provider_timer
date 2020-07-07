 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/timer.dart';


 class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
 }
 class _MyHomePageState extends State<HomePage> {
@override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) { 
     var timerInfo = Provider.of<TimerInfo>(context , listen: false);
     timerInfo.updateRaiminingTime();
    });
    super.initState();
  }
  @override
  Widget build(Object context) {
    
      return Scaffold(
        appBar: AppBar(
          title: Text('Provider example'),
          centerTitle: true,
        ),
        body: Container(
          child:Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
            children : <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child:Image.asset('assets/images/timer.png'),
                ),
                SizedBox(
                  height: 20,
                ),
              Consumer<TimerInfo>(
                builder: (context,data,child){
                  return Text(data.getRemainingTime.toString(), 
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),);
                },
              ),
            ],
          )
          ),
        ),
      );
  }

 }