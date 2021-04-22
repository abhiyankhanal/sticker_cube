import 'package:flutter/material.dart';

import 'package:sticker_cube/constants/color.dart';

class GridContainer extends StatelessWidget {
  String imgUrl;
  String name;
  String category;
  GridContainer({this.imgUrl, this.name, this.category});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image(
              height: height * 0.16,
              fit: BoxFit.cover,
              image: NetworkImage(imgUrl),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 12,
                          color: mainCol,
                          fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 10,
                        color: mainCol.withAlpha(80),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: height * 0.062,
                width: width * 0.14,
                color: secCol,
                child: Icon(
                  Icons.add,
                  color: white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
