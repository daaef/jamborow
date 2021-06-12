import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  bool getNotifications = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF1b2b45),
        elevation: 0,
        centerTitle: false,
        actions: <Widget>[
          Container(
            height: kToolbarHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'assets/qr.png',
                    height: 20,
                  ),
                  iconSize: 28.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        height: screenHeight - kToolbarHeight,
        padding: EdgeInsets.all(20),
        color: Color(0xFF1b2b45),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                shadowColor: Colors.black,
                color: Colors.transparent,
                elevation: 6,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                            10,
                          )),
                        ),
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/user.png",
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'Afekhide Gbadamosi',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text(
                                'demo@jamborow.com',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF293b57),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(
                            10,
                          )),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'General',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text(
                                'Personal Details',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text(
                                'You can edit your information about your email address, phone number, physical address',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'KYC Details',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text(
                                'You can edit your documents and more specific information',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 10,
                              ),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Notifications',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Switch(
                                      value: getNotifications,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            getNotifications = val;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
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
            Container(
              width: double.infinity,
              color: Colors.transparent,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Card(
                shadowColor: Colors.black,
                elevation: 6,
                color: Colors.transparent,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF293b57),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'Application',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                'Rate Jamborow App',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.white10,
                              margin: EdgeInsets.only(top: 15),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                'Support',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.white10,
                              margin: EdgeInsets.only(top: 5),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                'Share',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.white10,
                              margin: EdgeInsets.only(top: 5),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                'Terms & Policy',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.white10,
                              margin: EdgeInsets.only(top: 5),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
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
          ],
        ),
      ),
    );
  }
}
