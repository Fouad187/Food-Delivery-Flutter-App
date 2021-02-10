import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/Providers/favorite_list.dart';
import 'package:food_delivery/Widgets/favorite_card.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    Favorite favorite=Provider.of<Favorite>(context);
    print(favorite.FavoriteFoods.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Favorite Foods' , style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:favorite.FavoriteFoods.length > 0 ? ListView(
        children: favorite.FavoriteFoods.map((e) => FavoriteCard(food: e,)).toList(),
      ) :
      Padding(
        padding: EdgeInsets.only(left: 60 , right: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('images/emptyfavorite.svg' , width: size.width*0.4, height: size.height*0.3,),
            SizedBox(height: 40,),
            Text('You didn\'t have any favorite' , style: TextStyle(fontSize: 20 , color: Colors.grey , fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
