import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:jamborow/widgets/pageTransitionScale.dart';

import 'bottom_nav_screen.dart';

class LoanSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 50),
            child: Card(
              elevation: 6.0,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'Loan ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Summary',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '2nd September, 2020',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    DottedBorder(
                      dashPattern: [8, 4],
                      strokeWidth: 2,
                      color: Colors.deepPurpleAccent,
                      child: Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              top: 10,
                              right: 10,
                              left: 10,
                              bottom: 25,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Title of Loan:',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'My First Loan',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: Text(
                                              'Currency:',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('Naira (₦)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Payment Frequency',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Monthly',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'No. of Installments',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '10',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black45,
                                  height: .5,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Principal Amount',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '₦ 100,000.00',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Total Interest ',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '₦ 11,600.00',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Deducted Monthly',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '₦ 11,160.00',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Annual Interest',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '14.5%',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black45,
                                  height: .5,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Sub Total',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '₦ 111,600.00',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Processing Fee',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '₦ 1000.00',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: -28,
                            child: FlatButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                width: 200,
                                color: Colors.deepPurpleAccent,
                                child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Grand Total',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '₦ 112,600.00',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: FlatButton(
                              color: Colors.red,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Cancel',
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
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  FadeRoute(
                                    page: BottomNavScreen(5),
                                  ),
                                );
                              },
                              child: Text(
                                'Confirm',
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
          ),
        ],
      ),
    );
  }
}
