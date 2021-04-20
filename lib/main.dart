import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticker_cube/views/checkout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      title: "StickerCube",
      debugShowCheckedModeBanner: false,
      //initialBinding: InstanceBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => CheckOut(),
        ),
        // GetPage(
        //   name: "/checkout",
        //   page: () => CheckOut(),
        // ),
      ],
    );
  }
}
