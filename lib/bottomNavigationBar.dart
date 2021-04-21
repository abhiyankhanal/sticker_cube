import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticker_cube/constants/color.dart';
import 'package:sticker_cube/views/checkout.dart';
import 'views/home.dart';
import 'views/profile.dart';
import 'views/search.dart';

class ButtonNavigationBar extends StatefulWidget {
  @override
  _ButtonNavigationBarState createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int _selectedIndex = 2;
  List pages = <Widget>[Home(), Search(), CheckOut(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20.0,
              ),
              label: '',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                size: 20.0,
              ),
              label: '',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 20.0,
              ),
              label: ' ',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 20.0,
              ),
              label: '',
              backgroundColor: Colors.green,
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
