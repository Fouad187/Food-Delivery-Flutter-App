import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Slide extends StatelessWidget {
  const Slide({@required this.image , @required this.title , @required this.description});

  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            child: SvgPicture.asset(image, width: size.width*0.7, height: size.height*0.4,)),
        Text(title, style: TextStyle(color: Color(0xFFFE724C) , fontWeight: FontWeight.bold , fontSize: 22),),
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 20 , right: 20),
          child: Text(description,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
      ],

    );
  }
}
final List<Slide> slidelist=
[
  Slide( image : 'images/onfood.svg', title :'Fast Foods', description :'Find all kinds of fast foods from any category and know more details about the food and his price'),
  Slide(image : 'images/onselect.svg', title: 'Select Order', description: 'Select your meal from any category or from your favorite list food with your notes on any meal '),
  Slide(image : 'images/onway.svg', title : 'Fast Delivery', description: 'Waiting your order on the time which was in the app and kindly you can review it'),

];