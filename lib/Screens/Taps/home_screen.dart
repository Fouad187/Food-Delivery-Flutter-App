import 'package:flutter/material.dart';
import 'package:food_delivery/Models/food_model.dart';
import 'package:food_delivery/Screens/bough_food.dart';
import 'package:food_delivery/Widgets/category_card.dart';
import 'package:food_delivery/Widgets/food_card.dart';
import 'package:food_delivery/constant_lists.dart';

class HomeScreen extends StatelessWidget {
  static String id='HomeScreenID';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 40.0 , left:  20.0 , right: 20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('What would' , style: TextStyle(fontSize: 32.0 , fontWeight: FontWeight.bold),),
                  Text('you like to eat?', style:  TextStyle(fontSize: 32.0 , fontWeight: FontWeight.bold),),
                ],
              ),
              Icon(Icons.notifications_none ,size: 30, color: Color(0xFFFE724C),),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(image: categories[index].imagepath,name: categories[index].name, numberofitem: categories[index].numberofitems,);
                },
            ),
          ),
          SizedBox(height: 20,),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(15),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: 'Search for food',
                suffixIcon: Icon(Icons.search , color: Colors.black,),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Frequently Bought Foods' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, BoughtFoodScreen.id);
                  },
                  child: Text('View All' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18 , color: Color(0xFFFE724C),),)),
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: foods.map(makefood).toList(),
          )
        ],
      ),
    );
  }
}

Widget makefood(Food food)
{
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    child: FoodCard(
      food: food,
    ),
  );
}