import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/main_screen.dart';
import 'package:food_delivery/Widgets/slide_item.dart';

class OnboardingScreen extends StatelessWidget {
  static String id='OnboardingScreenid';
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 20 , right: 20),
                  child: Carousel(
                    images: slidelist,
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.grey,
                    dotIncreasedColor: Color(0xFFFE724C),
                    dotSpacing: 30,
                    dotSize: 6,
                    autoplayDuration: Duration(seconds: 10),
                    autoplay: true,

                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30, top: 40),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20 , right: 20 ,bottom: 10),
                    child: Container(
                      width: size.width,
                      height: size.height*0.05,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context, MainScreen.id);
                        },
                        child: Text('Get Started' , style: TextStyle(color: Colors.white , fontSize: 18),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Color(0xFFFE724C),
                      ),
                    ),
                  ),
                  /* Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Don\'t Have an account ?' , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, RegisterationScreen.id);
                        },
                        child: Text('Sign Up' , style: TextStyle(fontWeight:  FontWeight.bold , fontSize: 17),),
                      ),
                    ],
                  ),

                  */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
