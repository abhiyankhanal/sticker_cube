import 'package:flutter/material.dart';

import 'package:sticker_cube/constants/color.dart';
import 'package:sticker_cube/views/Home/widgets/caroSlider.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<String> _size = [
      'small(15 x 10 cm)',
      'medium(720 x 720 cm)',
      'large(1280 x 720cm)'
    ];
    String _selectedSize;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Row(
                        children: [
                          Icon(Icons.favorite_border_outlined),
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(Icons.share_outlined),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        child: Image.network(
                            'https://th.bing.com/th/id/OIP.M9AsZ7Sm6Qq-LXpY92Tt2AHaEK?pid=ImgDet&rs=1'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Street Cats",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Designed and sold by Hillary White',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                    child: CaroSlide(),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  DropdownButton(
                      isExpanded: true,
                      hint: Text('Select the size of your sticker'),
                      value: _selectedSize,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedSize = newValue;
                        });
                      },
                      items: _size.map(
                        (size) {
                          return DropdownMenuItem(
                            child: new Text(size),
                            value: size,
                          );
                        },
                      ).toList()),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Zipper Pouch',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rs. 50.0',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: null,
                          child: Container(
                            alignment: Alignment.center,
                            color: mainCol,
                            height: 30.0,
                            width: 150,
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
