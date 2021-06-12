import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jamborow/models/group.dart';

class GroupCollection extends ChangeNotifier {
  final List<Group> _groups = [
    Group(
        id: 1,
        name: "TheEdgeis",
        accountNo: "",
        orgId: 1,
        comment: "A test savings group for Edgetech Consults",
        accountVerified: true,
        status: true,
        bank: false,
        createdAt: DateTime.parse('2020-06-23 20:15:24')
    )
  ];
  var currentGroup;

  get count {
    return _groups.length;
  }

  get allGroups => _groups;

  Group getByIndex(int index){
    return _groups[index];
  }

  void createGroup(Group group) {
    group.id = count + 1;
    group.status = true;
    _groups.add(group);

    notifyListeners();
  }

  void updateGroup(payload) {

    currentGroup = payload;

    notifyListeners();
  }

  Group getGroup(int id) {
    currentGroup = _groups.where((group) => group.id == id).first;
    return currentGroup;
  }
}
