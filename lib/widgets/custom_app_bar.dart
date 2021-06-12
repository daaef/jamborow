import 'package:flutter/material.dart';
import 'package:jamborow/screens/bottom_nav_screen.dart';
import 'package:jamborow/screens/my_notifications.dart';
import 'package:jamborow/screens/my_profile_screen.dart';

import 'pageTransitionScale.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final showMenu;

  CustomAppBar(this.showMenu);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'nav',
      child: AppBar(
        backgroundColor: Color(0xFF1b2b45),
        elevation: 0.0,
        leading: showMenu
            ? IconButton(
                icon: Icon(Icons.menu),
                iconSize: 28.0,
                onPressed: () => {},
              )
            : null,
        title: IconButton(
          iconSize: 28.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavScreen(0),
              ),
            );
          },
          icon: Image.asset(
            "assets/logo_white.png",
            height: kToolbarHeight - 10,
            fit: BoxFit.contain,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            iconSize: 28.0,
            onPressed: () {
              Navigator.push(
                context,
                FadeRoute(
                  page: MyNotificationsScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/user.png",
              height: kToolbarHeight - 30,
              fit: BoxFit.contain,
            ),
            iconSize: 28.0,
            onPressed: () {
              Navigator.push(
                context,
                FadeRoute(
                  page: MyProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
