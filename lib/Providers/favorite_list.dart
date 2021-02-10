import 'package:flutter/cupertino.dart';
import 'package:food_delivery/Models/food_model.dart';

class Favorite extends ChangeNotifier
{
  List<Food> FavoriteFoods=[];

  addTolist({Food food})
  {
    FavoriteFoods.add(food);
    notifyListeners();
  }
  deleteFromList({Food food})
  {
    FavoriteFoods.remove(food);
    notifyListeners();
  }
}