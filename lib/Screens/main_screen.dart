import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'file:///D:/FCIS_2020/Rab3aaa/Gp/food_delivery/lib/Screens/Taps/home_screen.dart';
import 'package:food_delivery/Screens/Taps/cart_screen.dart';
import 'package:food_delivery/Screens/Taps/favorite_screen.dart';
import 'package:food_delivery/Screens/Taps/profile_screen.dart';

class MainScreen extends StatefulWidget {
  static String id='MainScreenid';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex=0;
  final tabs=[
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FFNavigationBar(

        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Color(0xFFFE724C),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,

        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.shopping_cart,
            label: 'Cart',
          ),
          FFNavigationBarItem(
            iconData: Icons.favorite,
            label: 'Favorite',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Profile',
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
