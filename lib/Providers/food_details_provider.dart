import 'package:flutter/cupertino.dart';

class FoodDetailsProvider extends ChangeNotifier
{
  int count=01;
  bool isfavorite=false;
  add()
  {
    count++;
    notifyListeners();
  }
  min()
  {
   if(count >= 2)
     {
       count--;
       notifyListeners();
     }
  }

  makeFavorite({bool favorite})
  {
    isfavorite=favorite;
    notifyListeners();
  }





}