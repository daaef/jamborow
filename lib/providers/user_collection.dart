import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jamborow/functions/random_digits.dart';
import 'package:jamborow/models/user.dart';

class UserCollection extends ChangeNotifier {
  final List<User> _users = [
    User(
      name: 'Afekhide',
      otherNames: 'Gbadamosi',
      email: 'demo@jamborow.com',
      msisdn: '234123456780',
      token: randomString(40),
      password: 'thedemopass123',
      verified: true,
      status: true,
      avatar: 'user.png',
      id: 1,
    )
  ];
  var currentUser;

  get count {
    return _users.length;
  }

  get allUsers => _users;

  void createUser(User user) {
    _users.add(user);

    notifyListeners();
  }

  void updateUser(int id, payload) {

    currentUser = payload;

    notifyListeners();
  }

  User getUser(int id) {
    currentUser = _users.where((user) => user.id == id).first;
    return currentUser;
  }
}
