import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Models/food_model.dart';
import 'package:food_delivery/Screens/food_screen.dart';

class FavoriteCard extends StatelessWidget {
  Food food;
  FavoriteCard({this.food});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12 , right: 12 , top: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FoodScreen(food: food,),));
        },
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(food.image),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.name , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                            Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                            Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                            Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                            Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                          ],
                        ),
                        Text('(${food.rating} Reviews)' , style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,),
                        Text('${food.price} LE ',style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.favorite , color: Colors.red,size: 35,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
