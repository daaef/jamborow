import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jamborow/functions/data_management.dart';
import 'package:jamborow/screens/groups_screen.dart';
import 'package:jamborow/screens/loans_screen.dart';
import 'package:jamborow/screens/my_loans_screen.dart';
import 'package:jamborow/screens/overview_screen.dart';
import 'package:jamborow/screens/package_screen.dart';
import 'package:jamborow/screens/transactions_screen.dart';
import 'package:jamborow/screens/wallet_screen.dart';
import 'package:jamborow/widgets/custom_app_bar.dart';
import 'screens.dart';

class BottomNavScreen extends StatefulWidget {
  final _myIndex;

  BottomNavScreen([this._myIndex = 0]);
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget._myIndex;
  }

  @override
  Widget build(BuildContext context) {
    final List _screens = [
      OverviewScreen(),
      GroupScreen(),
      WalletScreen(),
      TransactionsScreen(),
      PackageScreen(),
      MyLoansScreen(),
    ];

    return Scaffold(
      body: _screens[_currentIndex],
      appBar: CustomAppBar(false),
      bottomNavigationBar: Hero(
        tag: 'bottomnav',
        child: Container(
          color: Color(0xFF1b2b45),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            elevation: 0.0,
            unselectedIconTheme: IconThemeData(size: 15),
            items: [
              {'icon': FaIcon(FontAwesomeIcons.home), 'title': 'Home'},
              {'icon': FaIcon(FontAwesomeIcons.users), 'title': 'Groups'},
              {'icon': FaIcon(FontAwesomeIcons.wallet), 'title': 'Wallet'},
              {
                'icon': FaIcon(FontAwesomeIcons.exchangeAlt),
                'title': 'Transactions'
              },
              {'icon': FaIcon(FontAwesomeIcons.gift), 'title': 'Packages'},
              {'icon': FaIcon(FontAwesomeIcons.handshake), 'title': 'Loans'},
            ]
                .asMap()
                .map((key, value) => MapEntry(
                      key,
                      BottomNavigationBarItem(
                        title: Text(
                          value['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        icon: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: value['icon'],
                        ),
                      ),
                    ))
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}
