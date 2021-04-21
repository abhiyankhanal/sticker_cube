import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticker_cube/constants/color.dart';
import 'package:sticker_cube/views/Home/home.dart';
import 'package:sticker_cube/views/checkout.dart';

import 'views/profile.dart';
import 'views/search.dart';

class ButtonNavigationBar extends StatefulWidget {
  @override
  _ButtonNavigationBarState createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int _selectedIndex = 0;
  List pages = <Widget>[Home(), Search(), CheckOut(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 55.0,
        child: BottomNavigationBar(
          selectedItemColor: secCol,
          unselectedItemColor: mainCol,
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                size: 20.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 20.0,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 20.0,
              ),
              label: '',
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
