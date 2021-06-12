import 'package:meta/meta.dart';

class Wallet {
  final int id;
  final int userId;
  final double balance;
  final bool status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Wallet({
    @required this.id,
    @required this.userId,
    @required this.balance,
    @required this.status,
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
