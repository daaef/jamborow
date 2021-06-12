import 'package:flutter/material.dart';
import 'package:jamborow/providers/group_collection.dart';
import 'package:jamborow/providers/loan_collection.dart';
import 'package:jamborow/providers/user_collection.dart';
import 'package:jamborow/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserCollection()),
        ChangeNotifierProvider(create: (context) => GroupCollection()),
        ChangeNotifierProvider(create: (context) => LoanCollection()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: CardTheme(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        fontFamily: 'FiraSans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
