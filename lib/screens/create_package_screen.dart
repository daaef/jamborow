import 'package:flutter/material.dart';

class CreatePackageScreen extends StatefulWidget {
  @override
  _CreatePackageScreenState createState() => _CreatePackageScreenState();
}

class _CreatePackageScreenState extends State<CreatePackageScreen> {
  var paymentPlan;
  var areInsured;
  var selectedCurrency;
  var selectedScore;

  List<String> _repaymentPlan = [
    'Weekly',
    'Bi-Weekly',
    'Monthly',
  ];
  List<String> _insured = [
    'Yes',
    'No',
  ];
  List<String> _creditScore = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  List<String> _currency = [
    'Naira',
    'Kenya Shillings',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFF1b2b45),
      height: screenHeight - kToolbarHeight - kBottomNavigationBarHeight,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                'Create a new Package',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusColor: Color.fromRGBO(41, 51, 124, 1),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Loan Package Name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: "Package Name",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixStyle: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Repayment Plan",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black45,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                hint: Text(
                  'Repayment Plan',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: paymentPlan,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _repaymentPlan.map((String plan) {
                  return DropdownMenuItem<String>(
                    value: plan,
                    child: Row(
                      children: <Widget>[
                        Text(
                          plan,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    paymentPlan = value;
                  });
                },
              ),
            ),
            Text(
              "Minimum Credit Score",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black45,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                hint: Text(
                  'Minimum Credit Score',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: selectedScore,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _creditScore.map((String score) {
                  return DropdownMenuItem<String>(
                    value: score,
                    child: Row(
                      children: <Widget>[
                        Text(
                          score,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedScore = value;
                  });
                },
              ),
            ),
            Text(
              "Insure Loan Package?",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black45,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                hint: Text(
                  'Insure Loan Package?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: areInsured,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _insured.map((String answer) {
                  return DropdownMenuItem<String>(
                    value: answer,
                    child: Row(
                      children: <Widget>[
                        Text(
                          answer,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    areInsured = value;
                  });
                },
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusColor: Color.fromRGBO(41, 51, 124, 1),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Minimum Amount',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: "Minimum Amount",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixStyle: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusColor: Color.fromRGBO(41, 51, 124, 1),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Maximum Amount',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: "Maximum Amount",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixStyle: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Currency",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black45,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                hint: Text(
                  'Currency',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: selectedCurrency,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _currency.map((String note) {
                  return DropdownMenuItem<String>(
                    value: note,
                    child: Row(
                      children: <Widget>[
                        Text(
                          note,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCurrency = value;
                  });
                },
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              maxLength: 1000,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusColor: Color.fromRGBO(41, 51, 124, 1),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'A brief description of this loan',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: "Description",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixStyle: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                color: Color(0xFF3D84FF),
                onPressed: () {},
                child: Text(
                  'Create Package',
                  style: TextStyle(
                    fontFamily: 'FiraSans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
