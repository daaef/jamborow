import 'package:flutter/material.dart';
import 'package:jamborow/widgets/transaction.dart';

class TransactionsScreen extends StatefulWidget {
  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            _transactions(
              screenHeight,
              screenWidth,
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _transactions(
    double screenHeight,
    double screenWidth,
  ) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'Transactions by ',
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Afekhide Gbadamosi',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
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
            ),
          ],
        ),
      ),
    );
  }
}
