import 'package:flutter/material.dart';
import 'package:jamborow/data/data.dart';
import 'package:jamborow/functions/data_management.dart';
import 'package:jamborow/models/user.dart';
import 'package:jamborow/screens/bottom_nav_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = true;
  bool _isLoading = false;
  bool _hasError = false;
  Map _logInValues = {"email": "demo@jamborow.com", "password": ""};
  String _errorTextEM;
  String _errorTextPW;
  User demouser = normuser;

  TextEditingController _emailController =
      new TextEditingController(text: "demo@jamborow.com");

  togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  postDetails() async {
    print(demouser.userData()["name"]);
    await save(demouser.userData(), 'auth');

    if (_logInValues["email"] == null || _logInValues["email"] == "") {
      setState(() {
        _errorTextEM = "Field Cannot be empty";
      });
      return;
    }
    if (_logInValues["password"] == null ||
        _logInValues["password"].length < 4) {
      setState(() {
        _errorTextPW = "Password is not valid";
      });
      return;
    }
    setState(() {
      _isLoading = true;
    });

    if (_logInValues["email"] == demouser.email &&
        _logInValues["password"] == demouser.password) {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavScreen(),
        ),
      );
      setState(() {
        _isLoading = false;
      });
    } else if (_logInValues["email"] != demouser.email) {
      setState(() {
        _errorTextEM = "Email is wrong";
        _isLoading = false;
      });
    } else if (_logInValues["password"] != demouser.password) {
      setState(() {
        _errorTextPW = "Password is wrong";
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Container(
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.jpg"), fit: BoxFit.cover),
        ),
        child: _isLoading
            ? Container(
                height: screenHeight,
                width: screenWidth,
                color: Colors.white70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                  ],
                ),
              )
            : SingleChildScrollView(
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
                                    text: 'Login to ',
                                    style: TextStyle(
                                      fontFamily: 'FiraSans',
                                      fontSize: 30,
                                      color: Color(0xFF413E66),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'your ',
                                      ),
                                      TextSpan(
                                          text: 'Account',
                                          style: TextStyle(
                                              color: Color(0xFF3D84FF)))
                                    ]),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: _buildForm(screenHeight, screenWidth),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Hero(
                              tag: 'login_button',
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                color: Color(0xFF3D84FF),
                                onPressed: () {
                                  postDetails();
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
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      fontFamily: 'FiraSans',
                                      color: Color(0xFF413E66),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  onTap: () {
                                    save(demouser.userData(), 'auth');
                                  },
                                )
                              ],
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

  Widget _buildForm(double screenHeight, double screenWidth) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: <Widget>[
        TextField(
          controller: _emailController,
          onChanged: (value) {
            _logInValues["email"] = value;
            setState(() {
              _errorTextEM = null;
            });
          },
          style: TextStyle(
            color: Color(0xFF413E66),
          ),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            errorText: _errorTextEM,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              borderSide: BorderSide(
                color: Color(0xFF3D84FF),
                width: 2.0,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              borderSide: BorderSide(
                color: Color(0xFF413E66),
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              borderSide: BorderSide(
                color: Color(0xFF413E66),
                width: 2.0,
              ),
            ),
            filled: false,
            labelText: 'Email',
            labelStyle: TextStyle(
              color: Color(0xFF413E66),
            ),
            hintText: 'Input your Email Address',
            hintStyle: TextStyle(
              color: Color(0xFFA3A3A3),
            ),
            prefixIcon: Icon(
              Icons.mail,
              color: Color(0xFF413E66),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          onChanged: (value) {
            _logInValues["password"] = value;
            setState(() {
              _errorTextPW = null;
            });
          },
          obscureText: _isPasswordVisible,
          style: TextStyle(
            color: Color(0xFF413E66),
          ),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            errorText: _errorTextPW,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              borderSide: BorderSide(
                color: Color(0xFF3D84FF),
                width: 2.0,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              borderSide: BorderSide(
                color: Color(0xFF413E66),
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              borderSide: BorderSide(
                color: Color(0xFF413E66),
                width: 2.0,
              ),
            ),
            filled: false,
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Color(0xFF413E66),
            ),
            hintText: '**********',
            hintStyle: TextStyle(
              color: Color(0xFFA3A3A3),
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xFF413E66),
            ),
            suffix: InkWell(
              onTap: togglePasswordVisibility,
              child: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Color(0xFF413E66),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
