import 'package:flutter/material.dart';
import 'package:sticker_cube/constants/color.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: mainCol.withOpacity(0.05),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: mainCol,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Available Discounts (1)',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 80.0,
                    width: width - 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: 5.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.car_rental,
                          color: Colors.purple,
                          size: 50.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add 2 more small stickers to this order',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'and we\'ll discount all of them by 25%',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CartItems(
                            images:
                                'https://img.favpng.com/7/20/12/sticker-png-favpng-drbTXeHDa5GtFdup9FZEHpStw_t.jpg',
                            stickerTitle: 'Glossy Sticker',
                            size: 'Small(82mm x 76mm)',
                            price: 'Rs. 50',
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          CartItems(
                            images:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTAd_jQPxeBEUx0mSuBZ8ICCpJTQNjfidtQ&usqp=CAU',
                            stickerTitle: 'Glossy Sticker',
                            size: 'Small(79mm x 76mm)',
                            price: 'Rs. 70',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Coupon / Gift Card',
                    style: TextStyle(
                      color: mainCol,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        suffixIcon: Icon(
                          Icons.arrow_right_alt_outlined,
                          size: 35,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Coupon'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  BillingPrice(
                    categoryofPrice: 'Subtotal (2 items)',
                    price: 'Rs. 120',
                    size: 14.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  BillingPrice(
                    categoryofPrice: 'Shipping',
                    price: 'Rs. 50',
                    size: 14.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  BillingPrice(
                    categoryofPrice: 'Total',
                    price: 'Rs. 170',
                    size: 18.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      alignment: Alignment.center,
                      color: mainCol,
                      height: 50.0,
                      width: width,
                      child: Text(
                        'Proceed to Checkout',
                        style: TextStyle(
                          color: white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BillingPrice extends StatelessWidget {
  final String categoryofPrice, price;
  final double size;

  BillingPrice({this.categoryofPrice, this.price, this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categoryofPrice,
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CartItems extends StatefulWidget {
  final String images;
  final String stickerTitle, size, price;

  CartItems({this.images, this.stickerTitle, this.size, this.price});

  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  int quantity;

  @override
  void initState() {
    quantity = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          widget.images,
          height: 100.0,
          width: 100.0,
        ),
        SizedBox(
          width: 30.0,
        ),
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.stickerTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.size,
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      quantity--;
                      print(quantity);
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  quantity.toString(),
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      quantity++;
                      print(quantity);
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 80.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.cancel),
            SizedBox(
              height: 35.0,
            ),
            Text(
              widget.price,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}
