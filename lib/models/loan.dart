class Loan {
  int id;
  final String loanTitle;
  final int userId;
  final int orgId;
  final int loanPackageId;
  final int borrowerCreditScore;
  final double amount;
  bool status;
  DateTime createdAt;
  DateTime updatedAt;

  Loan({
    this.id,
    this.loanTitle,
    this.userId,
    this.orgId,
    this.loanPackageId,
    this.borrowerCreditScore,
    this.amount,
    this.status,
    this.createdAt,
    this.updatedAt
  });
}
