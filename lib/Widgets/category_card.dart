import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String name;
  final String image;
  final int numberofitem;

  CategoryCard({this.name , this.image , this.numberofitem});
  @override
  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context).size;
    return  Card(
      color: Colors.black,
      elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
          child: Stack(
            children: [
              Container(
                width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    )
                  ),
              ),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                left: 5.0,
                bottom: 5.0,
                child: Column(
                  children: [
                    Text(name , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),),
                    Text('$numberofitem kind', style: TextStyle(color: Colors.grey),),
                  ],
                ),
              )
            ],
        ),
    );
  }
}
