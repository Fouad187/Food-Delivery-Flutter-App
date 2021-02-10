import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/Models/food_model.dart';
import 'package:food_delivery/Providers/food_cart.dart';
import 'package:food_delivery/Widgets/order_card.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    FoodCart Food=Provider.of<FoodCart>(context);

    double totalprice=Food.Calculateprice();
    double totalDiscound=Food.Calculatediscound();
    double total=totalprice-totalDiscound;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Food Cart' , style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Food.Foods.length > 0 ? ListView(
        padding: EdgeInsets.all(10),
        children: [
         Column(
           children: Food.Foods.map((e) => OrderCard(food: e,)).toList(),
         ),
          SizedBox(height: 10,),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cart Total' , style: TextStyle(color: Colors.grey , fontSize: 16, fontWeight: FontWeight.bold),),
                    Text('$totalprice' , style: TextStyle(color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discount' , style: TextStyle(color: Colors.grey , fontSize: 16, fontWeight: FontWeight.bold),),
                    Text('$totalDiscound' , style: TextStyle(color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tax' , style: TextStyle(color: Colors.grey , fontSize: 16, fontWeight: FontWeight.bold),),
                    Text('0' , style: TextStyle(color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 15, color: Colors.grey,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total' , style: TextStyle(color: Colors.grey , fontSize: 16, fontWeight: FontWeight.bold),),
                    Text('$total' , style: TextStyle(color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFFE724C),
                  ),
                  child: Center(child: Text('Proceed to Checkout' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),),),
                ),
              ],
            ),
          ),
        ],
      ) : Padding(
        padding: EdgeInsets.only(left: 60 , right: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('images/empty.svg' , width: size.width*0.4, height: size.height*0.3,),
            SizedBox(height: 40,),
            Text('Empty Card ' , style: TextStyle(fontSize: 20 , color: Colors.grey , fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
