import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sticker_cube/constants/color.dart';

class CaroSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;

    return CarouselSlider(
        options: CarouselOptions(
          height: height * 0.2,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.easeIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 1,
        ),
        items: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: mainCol,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    'https://img.freepik.com/free-psd/business-promotion-corporate-web-banner-template_120329-1259.jpg?size=626&ext=jpg'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: mainCol,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    "https://pix10.agoda.net/hotelImages/302/302306/302306_16021819140039999628.jpg?s=1024x768"),
              ),
            ),
          )
        ]);
  }
}

//efficient helper code for caro
// stream: stramData
//               builder: (context, snap) {
//                 if (snap.hasError) {
//                   return Container();
//                 }
//                 if (snap.hasData) {
//                   List<CaroSlide> docList = snap.data;
//                   List<Widget> q = docList.map((c) {
//                     return Container(
//                       margin: EdgeInsets.only(top: 10.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5.0),
//                         color: Colors.red,
//                         image: DecorationImage(
//                             image: NetworkImage(c.imgUrl), fit: BoxFit.cover),
//                       ),
//                     );
//                   }).toList();

//                   return CarouselSlider(
//                     options: CarouselOptions(
//                       height: _height * 0.3,
//                       enlargeCenterPage: true,
//                       autoPlay: true,
//                       aspectRatio: 16 / 9,
//                       autoPlayCurve: Curves.fastOutSlowIn,
//                       enableInfiniteScroll: true,
//                       autoPlayAnimationDuration: Duration(milliseconds: 800),
//                       viewportFraction: 0.8,
//                     ),
//                     items: q,
//                   );
//                 } else {
//                   return Container();
//                 }
//               }),
//         ));
