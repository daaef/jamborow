class LoanPackage {
  int id;
  final int orgId;
  final int userId;
  final int minCreditScore;
  final double minAmount;
  final double maxAmount;
  final double interestRate;
  final String name;
  final String repaymentPlan;
  final String extraInfo;
  final String description;
  final String currency;
  final bool insured;
  bool status;

  LoanPackage({
    this.id,
    this.orgId,
    this.userId,
    this.minCreditScore,
    this.minAmount,
    this.maxAmount,
    this.interestRate,
    this.name,
    this.repaymentPlan,
    this.extraInfo,
    this.description,
    this.currency,
    this.insured,
    this.status,
  });
}
