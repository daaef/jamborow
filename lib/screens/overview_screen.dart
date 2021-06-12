import 'package:flutter/material.dart';
import 'package:jamborow/data/data.dart';
import 'package:jamborow/functions/data_management.dart';
import 'package:jamborow/functions/time_of_day.dart';
import 'package:jamborow/models/user.dart';
import 'package:jamborow/providers/group_collection.dart';
import 'package:jamborow/providers/user_collection.dart';
import 'package:jamborow/screens/bottom_nav_screen.dart';
import 'package:jamborow/widgets/language_dropdown.dart';
import 'package:jamborow/widgets/pageTransitionScale.dart';
import 'package:jamborow/widgets/transaction.dart';
import 'package:provider/provider.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  String _language = 'ENGLISH';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Consumer<UserCollection>(
      builder: (context, users, child){
        users.getUser(1);
        print('currentUser is ${users.currentUser.name.toString()}');
      return  WillPopScope(
      onWillPop: () async {
        print('Anything');
        return false;
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgmain.jpg"),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
          ),
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: <Widget>[
              _buildHeader(screenHeight, screenWidth, users.currentUser),
              _dashboardContents(screenHeight, screenWidth, context)
            ],
          ),
        ),
      ),
    );}
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight, double screenWidth, User currentUser) {
    var demoWallet =
        userWallets.singleWhere(((wallet) => wallet.userId == currentUser.id));
    print(demoWallet);
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Color(0xFF1B2B45),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: '${timeOfDay()},\n',
                    style: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${currentUser.name} ${currentUser.otherNames}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                LanguageDropdown(
                  languages: ['ENGLISH', 'KISWAHILI'],
                  language: _language,
                  onChanged: (val) => setState(() => _language = val),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      'Credit Score:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent[200],
                        height: .6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                width: double.infinity,
                height: 1,
                margin: EdgeInsets.symmetric(vertical: 15),
                color: Colors.white60,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Wallet Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '${demoWallet.balance}0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

SliverToBoxAdapter _dashboardContents(
    double screenHeight, double screenWidth, BuildContext context) {
  return SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: (screenWidth / 2) - 25,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(1),
                        ),
                      );
                    },
                    color: Color(0xFF066754),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Consumer<GroupCollection>(
                            builder: (context, groups, child) {
                              return
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        height: 35,
                                        child: Image.asset(
                                          'assets/group.png',
                                        ),
                                      ),
                                      Container(
                                        height: 31,
                                        child: Text(
                                          '${groups.count}',
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                            },
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Groups",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: (screenWidth / 2) - 25,
                  padding: EdgeInsets.only(left: 10),
                  child: FlatButton(
                    onPressed: () async {
                      print(await read('auth'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(5),
                        ),
                      );
                    },
                    color: Color(0xFF264477),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  child: Image.asset(
                                    'assets/loan.png',
                                  ),
                                ),
                                Container(
                                  height: 31,
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Loans Borrowed",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 20,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF6d0c8d),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: screenWidth / 3 - 20,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: BottomNavScreen(2),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image.asset(
                            'assets/money.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Wallet',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth / 3 - 20,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: BottomNavScreen(4),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image.asset(
                            'assets/product.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Packages',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth / 3 - 20,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: BottomNavScreen(3),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image.asset(
                            'assets/transaction.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Transaction',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Latest Transactions',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            FadeRoute(
                              page: BottomNavScreen(3),
                            ),
                          );
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Transaction(
                          title: 'My First Aquisition',
                          date: '22.02.2020',
                          amount: '45,000.00',
                          deposit: true),
                      Transaction(
                          title: 'Vintage Snickers',
                          date: '27.04.2020',
                          amount: '10,000.00',
                          deposit: false)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
