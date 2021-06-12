import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jamborow/providers/group_collection.dart';
import 'package:jamborow/screens/create_group_screen.dart';
import 'package:provider/provider.dart';

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[_groupTable(screenHeight, screenWidth)],
        ),
      ),
    );
  }

  SliverToBoxAdapter _groupTable(
    double screenHeight,
    double screenWidth,
  ) {
    return SliverToBoxAdapter(
      child: Container(
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
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Groups',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context)
                          .showBottomSheet<void>((BuildContext context) {
                        return CreateGroupScreen();
                      });
                    },
                    child: Text(
                      'Create new Group',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Consumer<GroupCollection>(builder: (
                      context,
                      groups,
                      child,
                    ) {
                      return Container(
                        height: screenHeight - 200,
                        child: ListView.builder(
                          itemCount: groups.count,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var group = groups.getByIndex(index);
                            return GroupWidget(
                              groupName: group.name,
                              comment: group.comment,
                              status: group.status,
                              createdAt: group.createdAt,
                            );
                          },
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GroupWidget extends StatelessWidget {
  final String groupName;
  final String comment;
  final bool status;
  final DateTime createdAt;

  GroupWidget({
    Key key,
    this.groupName,
    this.comment,
    this.status,
    this.createdAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('yMMMMd');
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
                        'Group Name:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(groupName),
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
                        'Comment:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(comment),
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
                        'Status:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        status ? 'Active' : 'InActive',
                        style: TextStyle(
                          color: status ? Colors.green : Colors.red,
                        ),
                      ),
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
                        'Date of Creation:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('${formatter.format(createdAt)}'),
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
                      child: FlatButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {},
                        child: Text(
                          'Delete',
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
