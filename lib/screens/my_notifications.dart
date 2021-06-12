import 'package:flutter/material.dart';

class MyNotificationsScreen extends StatefulWidget {
  @override
  _MyNotificationsScreenState createState() => _MyNotificationsScreenState();
}

class _MyNotificationsScreenState extends State<MyNotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Color(0xFF1b2b45),
        elevation: 0,
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
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '02/09//2020',
                          style: TextStyle(
                            color: Colors.orange[100],
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    Text(
                        'A loan of ₦100,000.00 was disbursed to your account. You are due to pay ₦11,160.00 on the 2nd of October 2020.',
                        style: TextStyle(
                          color: Colors.white70,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
