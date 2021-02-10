import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Models/food_model.dart';
import 'package:food_delivery/Providers/food_cart.dart';
import 'package:provider/provider.dart';

class OrderCard extends StatelessWidget {

  Food food;
  OrderCard({this.food});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 40,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0 , color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    InkWell(onTap: (){},child: Icon(Icons.keyboard_arrow_up , color: Colors.grey.shade400,),),
                    Text('${food.quantity}' ,style: TextStyle(fontSize: 18),),
                    InkWell(onTap: (){},child: Icon(Icons.keyboard_arrow_down,color: Colors.grey.shade400,)),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              flex: 2,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(food.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0.0 , 0.5),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19),),
                  SizedBox(height: 5,),
                  Text('${food.price} LE ', style:  TextStyle(fontWeight: FontWeight.bold , fontSize: 19),),
                  Text('${food.rating}', style: TextStyle(color: Colors.orangeAccent ,fontSize: 19 ),),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: (){

                    Provider.of<FoodCart>(context , listen: false).deleteFromList(food: food);
                  },
                  child: Icon(Icons.cancel , color: Colors.grey,)),
            ),
          ],
        ),
      ),
    );
  }
}
