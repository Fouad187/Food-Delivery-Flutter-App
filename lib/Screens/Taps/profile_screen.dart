import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchvaluenotification=true;
  bool switchvaluelocation=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Profile' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w800 , fontSize: 32),)),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        image: AssetImage('images/me.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          offset: Offset(0,4.0),
                          color: Colors.black38
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fouad Abd-Elaziz' , style: TextStyle(fontSize: 18 , color: Colors.black , fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('+02 01027701892', style: TextStyle(fontSize: 16 , color: Colors.grey),),
                      SizedBox(height: 20,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Color(0xFFFE724C),
                          )
                        ),
                        child: Center(child: Text('Edit'),),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Text('Account' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              SizedBox(height: 10,),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on , color: Color(0xFFFE724C),),
                          SizedBox(width: 15,),
                          Text('Location' , style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Icon(Icons.visibility , color: Color(0xFFFE724C),),
                          SizedBox(width: 15,),
                          Text('Change Password' , style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),Row(
                        children: [
                          Icon(Icons.shopping_cart , color: Color(0xFFFE724C),),
                          SizedBox(width: 15,),
                          Text('Shopping' , style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),Row(
                        children: [
                          Icon(Icons.payment , color: Color(0xFFFE724C),),
                          SizedBox(width: 15,),
                          Text('Payment' , style: TextStyle(fontSize: 16),),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Notifications' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              SizedBox(height: 10,),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('App Notification' , style: TextStyle(fontSize: 16),),
                          Switch(value: switchvaluenotification,
                          onChanged: (value)
                            {
                              setState(() {
                                switchvaluenotification=value;
                              });
                            },
                            activeColor: Color(0xFFFE724C),
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Location Tracking' , style: TextStyle(fontSize: 16),),
                          Switch(value: switchvaluelocation,
                            onChanged: (value)
                            {
                              setState(() {
                                switchvaluelocation=value;
                              });
                            },
                            activeColor: Color(0xFFFE724C),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
