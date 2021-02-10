import 'package:flutter/material.dart';
import 'package:food_delivery/Models/food_model.dart';
import 'package:food_delivery/Providers/favorite_list.dart';
import 'package:food_delivery/Providers/food_details_provider.dart';
import 'package:food_delivery/Providers/food_cart.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatelessWidget {
  static String id='FoodScreenid';
  FoodScreen({this.food});
  Food food;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    final instance=Provider.of<FoodDetailsProvider>(context);
    instance.isfavorite=false;
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: ListView(
        children: [
          Container(
            height: 325,
            width: size.width,
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40) , bottomRight: Radius.circular(40)),
                      image: DecorationImage(
                          image: AssetImage(food.image),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 30,
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('${food.rating}' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                        Icon(Icons.star , color: Colors.orangeAccent,),
                        Text('(20+)'),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 30,
                  child: GestureDetector(
                    onTap: ()
                    {

                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                      ),
                      child: instance.isfavorite ? Icon(Icons.favorite , color: Colors.red, size: 30,) : Icon(Icons.favorite_border , color: Colors.red, size: 30,)  ,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30 , right: 30 , top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(food.name, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
                SizedBox(height: 15,),
                Text(food.description),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('  ${food.price}',style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w800)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Quantity' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  instance.min();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black
                                  ),
                                  child: Center(child: Text('-' , style: TextStyle(fontSize: 25 , color: Colors.white),)),
                                ),
                              ),
                              Text('${instance.count}' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                              GestureDetector(
                                onTap: (){
                                  instance.add();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFFE724C),
                                  ),
                                  child: Center(child: Text('+' , style: TextStyle(fontSize: 25 , color: Colors.white),)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('Resturant : ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20),),
                    Text(food.resturant, style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 18),),
                    Icon(Icons.location_on , color: Color(0xFFFE724C),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Delivery Time : ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20),),
                    Text(food.delivertime, style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 18),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Discount : ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20),),
                    Text('${food.discount} LE', style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20   , color:Color(0xFFFE724C), ),),
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  width: size.width,
                  child: FlatButton(onPressed:(){
                    food.quantity=instance.count;
                    food.totalprice=instance.count * food.price;
                    food.totaldiscound=instance.count*food.discount;

                    Provider.of<FoodCart>(context , listen: false).addTolist(food: food);
                    Provider.of<FoodDetailsProvider>(context , listen: false).count=1;
                  } ,
                    child: Text('Add To Cart' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),) ,
                    color: Color(0xFFFE724C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
