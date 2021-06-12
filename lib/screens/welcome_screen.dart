import 'package:flutter/material.dart';
import 'package:jamborow/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Container(
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white70,
            height: screenHeight,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Welcome To',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'FiraSans',
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Hero(
                            tag: 'logo',
                            child: Image.asset(
                              "assets/logo.png",
                              height: 150.0,
                              width: 150.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Hero(
                        tag: 'writeup',
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'Africa\'s ',
                              style: TextStyle(
                                fontFamily: 'FiraSans',
                                fontSize: 40,
                                color: Color(0xFF413E66),
                                fontWeight: FontWeight.w900,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'First Inclusive & Intelligent \n',
                                ),
                                TextSpan(
                                  text: 'Fintech Platform',
                                  style: TextStyle(
                                    color: Color(0xFF3D84FF),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(top: 50),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        color: Color(0xFF413E66),
                        onPressed: () => {},
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontFamily: 'FiraSans',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Hero(
                        tag: 'login_button',
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          color: Color(0xFF3D84FF),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            )
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
