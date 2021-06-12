import 'package:flutter/material.dart';
import 'package:jamborow/models/group.dart';
import 'package:jamborow/providers/group_collection.dart';
import 'package:provider/provider.dart';

class CreateGroupScreen extends StatefulWidget {
  @override
  _CreateGroupScreenState createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  var selectedAssociation;
  var haveBank;
  var selectedState;
  var selectedLGA;
  Map _groupValues = {
    "name": "",
    "association": "",
    "document": "",
    "accountNo": "",
    "userId": "",
    "comment": "",
    "status": "",
  };

  List<String> _associations = [
    'NTA',
    'NITDA',
    'PIPC',
  ];
  List<String> _bankAnswer = [
    'Yes',
    'No',
  ];
  List<String> _states = [
    'Edo',
    'Lagos',
    'FCT',
    'Rivers',
    'Oyo',
    'Enugu',
    'Plateau',
    'Kano',
  ];
  List<String> _lgas = [
    'Jos',
    'Owan East',
    'Agege',
    'Durumi',
    'Tudun Wada',
  ];

  @override
  void initState() {
    super.initState();
  }

  postGroup() {
    Provider.of<GroupCollection>(context, listen: false)
        .createGroup(
        Group(
          createdAt: DateTime.now(),
          comment: _groupValues['comment'],
          name: _groupValues['name'],
        ),
    );
    Navigator.of(context).pop();
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
                'Create a new Group',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                _groupValues["name"] = value;
              },
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
                hintText: 'Name of Your Group',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: "Group name",
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
              "Association",
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
                  'Select an Association',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: selectedAssociation,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _associations.map((String association) {
                  return DropdownMenuItem<String>(
                    value: association,
                    child: Row(
                      children: <Widget>[
                        Text(
                          association,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedAssociation = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bank Account?",
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
                  'Do You Have a Bank Account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: haveBank,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _bankAnswer.map((String answer) {
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
                    haveBank = value;
                  });
                },
              ),
            ),
            Text(
              "State",
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
                  'Select a State',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: selectedState,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _states.map((String state) {
                  return DropdownMenuItem<String>(
                    value: state,
                    child: Row(
                      children: <Widget>[
                        Text(
                          state,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedState = value;
                  });
                },
              ),
            ),
            Text(
              "Local Government Area",
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
                  'Select a Local Government Area',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                dropdownColor: Colors.black,
                value: selectedLGA,
                focusColor: Colors.blue,
                isExpanded: true,
                items: _lgas.map((String lga) {
                  return DropdownMenuItem<String>(
                    value: lga,
                    child: Row(
                      children: <Widget>[
                        Text(
                          lga,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedLGA = value;
                  });
                },
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              maxLength: 1000,
              onChanged: (value) {
                _groupValues["comment"] = value;
              },
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
                hintText: 'About this Group',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: "Comment",
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
                onPressed: () {
                  postGroup();
                },
                child: Text(
                  'Create Group',
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
