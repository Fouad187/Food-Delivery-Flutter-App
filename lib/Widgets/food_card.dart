import 'package:flutter/material.dart';
import 'package:food_delivery/Models/food_model.dart';
import 'package:food_delivery/Screens/food_screen.dart';


class FoodCard extends StatelessWidget {

  Food food;
  FoodCard({this.food});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FoodScreen(food: food,),));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width-40,
              child: Image.asset(food.image,fit: BoxFit.fill,),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width-40,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black12,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter
                    )
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name , style: TextStyle(color: Colors.white , fontSize: 18 ,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                          Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                          Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                          Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                          Icon(Icons.star , color: Colors.blueAccent , size: 16,),
                          SizedBox(width: 10,),
                          Text('(${food.rating} Reviews)' , style: TextStyle(color: Colors.grey),),

                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${food.discount}' , style: TextStyle(color: Colors.orangeAccent , fontSize: 22 , fontWeight: FontWeight.bold),),
                      Text('Min order' , style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
