import 'package:flutter/material.dart';

class home_provider extends ChangeNotifier
{
  int i=0;

  void countinue()
  {
    i++;
    notifyListeners();
  }

  void back()
  {
    i--;
    notifyListeners();
  }
}