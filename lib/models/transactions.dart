import 'package:meta/meta.dart';

class Transaction {
  final int id;
  final int userId;
  final String txnCode;
  final int txnType;
  final double amount;
  final int orgId;
  final int groupId;
  final int transactionTypeId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Transaction({
    @required this.id,
    @required this.userId,
    @required this.txnCode,
    @required this.txnType,
    @required this.amount,
    @required this.orgId,
    @required this.groupId,
    @required this.transactionTypeId,
    this.createdAt,
    this.updatedAt,
  });
}

class OrgWallet {
  final int id;
  final int orgId;
  final double balance;
  final bool status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const OrgWallet({
    @required this.id,
    @required this.orgId,
    @required this.balance,
    @required this.status,
    this.createdAt,
    this.updatedAt,
  });
}
