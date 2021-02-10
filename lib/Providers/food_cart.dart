import 'package:flutter/cupertino.dart';
import 'package:food_delivery/Models/food_model.dart';

class FoodCart extends ChangeNotifier {

  List<Food> Foods=[];

  addTolist({Food food})
  {
    Foods.add(food);
    notifyListeners();
  }
  
  deleteFromList({Food food})
  {
    Foods.remove(food);
    notifyListeners();
  }

  double Calculateprice()
  {
    double sum=0;
    for(var food in Foods)
      {
        sum+=food.totalprice;
      }
    return sum;
  }

  double Calculatediscound()
  {
    double discount=0;
    for(var food in Foods)
      {
        discount+=food.totaldiscound;
      }
    return discount;
  }
}