import 'package:flutter/material.dart';
import 'package:jamborow/providers/loan_collection.dart';
import 'package:jamborow/screens/loans_screen.dart';
import 'package:provider/provider.dart';

class MyLoansScreen extends StatefulWidget {
  @override
  _MyLoansScreenState createState() => _MyLoansScreenState();
}

class _MyLoansScreenState extends State<MyLoansScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            _loanPackages(screenHeight, screenWidth),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _loanPackages(
    double screenHeight,
    double screenWidth,
  ) {
    return SliverToBoxAdapter(
        child:
    Consumer<LoanCollection>(builder: (
      context,
      loans,
      child,
    ) {
      return loans.count > 0 ?
      Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'Afekhide\'s ',
                          style: TextStyle(
                            fontFamily: 'FiraSans',
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Loans',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoanScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Get Loan',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                /*ListView.builder(
                    itemCount: loans.count,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return LoanWidget();
                    })*/
              ],
            ),
          ) :
      Container(
            height: screenHeight - kToolbarHeight - kBottomNavigationBarHeight,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nothing to see here , try getting a ',
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoanScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Loan',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blueAccent,
                        fontSize: 25,
                        height: .6,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
    }),
        );

  }
}

class LoanWidget extends StatelessWidget {
  const LoanWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Card(
        elevation: 6.0,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Loan Title',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('My First Loan'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Text(
                        'Amount:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('100,000'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Status',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('Unpaid'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Borrowed On',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('2/09/2020'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: FlatButton(
                        color: Colors.orangeAccent,
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ApplyLoanScreen(),
                          //   ),
                          // );
                        },
                        child: Text(
                          'Extend',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        color: Colors.green,
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ApplyLoanScreen(),
                          //   ),
                          // );
                        },
                        child: Text(
                          'Pay',
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
    );
  }
}
