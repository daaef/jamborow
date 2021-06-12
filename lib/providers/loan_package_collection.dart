import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jamborow/models/loan_package.dart';

class LoanPackageCollection extends ChangeNotifier {
  final List<LoanPackage> _loanPackages = [
    LoanPackage(
        id: 1,
        minCreditScore: 1,
        minAmount: 100000.00,
        maxAmount: 500000.00,
        interestRate: 14.5,
        name: "First Package",
        repaymentPlan: "Monthly",
        extraInfo: "",
        description: "",
        currency: "₦",
        insured: false
    )
  ];
  var currentLoanPackage;

  get count {
    return _loanPackages.length;
  }

  get allLoanPackages => _loanPackages;

  LoanPackage getByIndex(int index){
    return _loanPackages[index];
  }

  void createLoanPackage(LoanPackage loanPackage) {
    loanPackage.id = count + 1;
    loanPackage.status = true;
    _loanPackages.add(loanPackage);

    notifyListeners();
  }

  void updateLoan(payload) {

    currentLoanPackage = payload;

    notifyListeners();
  }

  LoanPackage getLoanPackage(int id) {
    currentLoanPackage = _loanPackages.where((loanPackage) => loanPackage.id == id).first;
    return currentLoanPackage;
  }
}
