import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Abhiyan',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'abhiyan5588@gmail.com',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Activities(
                              icons: Icons.history,
                              activityTitle: 'Order History',
                              display: false,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Activities(
                              icons: Icons.send_outlined,
                              activityTitle: 'Shipping Country',
                              display: true,
                              desc: 'GB',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Activities(
                              icons: Icons.attach_money,
                              activityTitle: 'Currency',
                              display: true,
                              desc: 'GBP',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        color: Color(0xFFF2EFF6),
                        height: 20.0,
                        width: width,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Activities(
                    icons: Icons.lock,
                    activityTitle: 'Privacy Policy',
                    display: false,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Activities(
                    icons: Icons.help,
                    activityTitle: 'Customer Support',
                    display: false,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Activities(
                    icons: Icons.flag,
                    activityTitle: 'Report Content',
                    display: false,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Activities(
                    icons: Icons.person,
                    activityTitle: 'User Agreement',
                    display: false,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFF2EFF6),
              height: 20.0,
              width: width,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Activities(
                icons: Icons.logout,
                activityTitle: 'Logout',
                display: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Activities extends StatelessWidget {
  final IconData icons;
  final String activityTitle, desc;
  final bool display;

  Activities({this.icons, this.activityTitle, this.desc, this.display});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icons),
            SizedBox(
              width: 10.0,
            ),
            Text(
              activityTitle,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        display
            ? Text(
                desc,
                style: TextStyle(color: Colors.grey),
              )
            : Text(''),
      ],
    );
  }
}
