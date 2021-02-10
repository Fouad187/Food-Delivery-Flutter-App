import 'package:flutter/material.dart';
import 'package:food_delivery/Providers/favorite_list.dart';
import 'package:food_delivery/Providers/food_details_provider.dart';
import 'package:food_delivery/Providers/food_cart.dart';
import 'package:food_delivery/Screens/bough_food.dart';
import 'package:food_delivery/Screens/on_boarding_screen.dart';
import 'package:provider/provider.dart';
import 'Screens/food_screen.dart';
import 'file:///D:/FCIS_2020/Rab3aaa/Gp/food_delivery/lib/Screens/Taps/home_screen.dart';
import 'package:food_delivery/Screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FoodDetailsProvider>(create: (context) => FoodDetailsProvider(),),
        ChangeNotifierProvider<FoodCart>(create: (context) => FoodCart(),),
        ChangeNotifierProvider<Favorite>(create: (context) => Favorite(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: OnboardingScreen.id,
        routes: {
          HomeScreen.id:(context)=>HomeScreen(),
          BoughtFoodScreen.id:(context)=>BoughtFoodScreen(),
          MainScreen.id:(context)=>MainScreen(),
          FoodScreen.id:(context)=>FoodScreen(),
          OnboardingScreen.id:(context)=>OnboardingScreen(),
        },
      ),
    );
  }
}

