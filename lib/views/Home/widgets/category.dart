import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticker_cube/constants/color.dart';

class CategoryWidget extends StatelessWidget {
  String cat_name;
  IconData icon_name;
  CategoryWidget({this.cat_name, this.icon_name});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                icon_name,
                size: width * 0.055,
              ),
            ),
            onPressed: () => null,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: secCol,
              shape: CircleBorder(),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            cat_name,
            style: TextStyle(
                color: mainCol, fontSize: 10.0, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
