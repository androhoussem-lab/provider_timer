

import 'package:flutter/foundation.dart';

class TimerInfo extends ChangeNotifier{
  int remainingTime = 60;
  int get getRemainingTime => this.remainingTime;

 void updateRaiminingTime(){
   remainingTime --;
   notifyListeners();
 }
}