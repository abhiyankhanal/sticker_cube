import 'package:flutter/material.dart';
import 'package:sticker_cube/constants/color.dart';
import 'package:sticker_cube/views/Home/widgets/caroSlider.dart';
import 'package:sticker_cube/views/Home/widgets/category.dart';
import 'package:sticker_cube/views/Home/widgets/gridContainer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: mainCol,
        title: Image(
          width: width * 0.4,
          image: AssetImage("assets/images/full.png"),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: mainCol.withOpacity(0.05),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CaroSlide(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: mainCol.withOpacity(0.05),
                    //     blurRadius: 10.0, // soften the shadow
                    //     spreadRadius: 5.0, //extend the shadow
                    //     offset: Offset(
                    //       7.0,
                    //       2.0, // Move to bottom 10 Vertically
                    //     ),
                    //   ),
                    // ],
                    color: secCol.withOpacity(0.05),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CategoryWidget(
                          cat_name: "Laptop Stickers",
                          icon_name: Icons.laptop_outlined,
                        ),
                        CategoryWidget(
                          cat_name: "Mobile Stickers",
                          icon_name: Icons.phone_android,
                        ),
                        CategoryWidget(
                          cat_name: "Di-Cut Stickers",
                          icon_name: Icons.sticky_note_2,
                        ),
                        CategoryWidget(
                          cat_name: "Laptop Stickers",
                          icon_name: Icons.laptop_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: mainCol.withOpacity(0.05),
                    //     blurRadius: 10.0, // soften the shadow
                    //     spreadRadius: 5.0, //extend the shadow
                    //     offset: Offset(
                    //       7.0,
                    //       2.0, // Move to bottom 10 Vertically
                    //     ),
                    //   ),
                    // ],
                    color: secCol.withOpacity(0.05),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                          child: Text(
                            "Popular Products",
                            style: TextStyle(
                                color: mainCol,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          height: height * 0.4,
                          child: GridView.count(
                            childAspectRatio: (height * 0.2) / (width * 0.45),
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            children: <Widget>[
                              GridContainer(
                                name: "Avenger sticker",
                                category: "Laptop Sticker",
                                imgUrl:
                                    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                              ),
                              GridContainer(
                                name: "Avenger sticker",
                                category: "Laptop Sticker",
                                imgUrl:
                                    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                              ),
                              GridContainer(
                                name: "Avenger sticker",
                                category: "Laptop Sticker",
                                imgUrl:
                                    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                              ),
                              GridContainer(
                                name: "Avenger sticker",
                                category: "Laptop Sticker",
                                imgUrl:
                                    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                              ),
                              GridContainer(
                                name: "Avenger sticker",
                                category: "Laptop Sticker",
                                imgUrl:
                                    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                              ),
                              GridContainer(
                                name: "Avenger sticker",
                                category: "Laptop Sticker",
                                imgUrl:
                                    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
