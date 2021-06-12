import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jamborow/models/loan.dart';

class LoanCollection extends ChangeNotifier {
  final List<Loan> _loans = [
  ];
  var currentLoan;

  get count {
    return _loans.length;
  }

  get allLoans => _loans;

  Loan getByIndex(int index){
    return _loans[index];
  }

  void createLoan(Loan loan) {
    loan.id = count + 1;
    loan.status = true;
    _loans.add(loan);

    notifyListeners();
  }

  void updateLoan(payload) {

    currentLoan = payload;

    notifyListeners();
  }

  Loan getLoan(int id) {
    currentLoan = _loans.where((loan) => loan.id == id).first;
    return currentLoan;
  }
}
