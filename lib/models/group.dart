class Group {
  int id;
  final String name;
  final String accountNo;
  final int userId;
  final int orgId;
  final int associationId;
  final String comment;
  final String groupData;
  final bool accountVerified;
  bool status;
  final String groupCertificate;
  final String groupNumber;
  final String groupSettings;
  final bool bank;
  final String bankName;
  final String bankBranch;
  final String levelOne;
  final String levelTwo;
  final String levelThree;
  final String levelFour;
  final int trainerId;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  Group({
    this.id,
    this.name,
    this.accountNo,
    this.userId,
    this.orgId,
    this.associationId,
    this.comment,
    this.groupData,
    this.accountVerified,
    this.status,
    this.groupCertificate,
    this.groupNumber,
    this.groupSettings,
    this.bank,
    this.bankName,
    this.bankBranch,
    this.levelOne,
    this.levelTwo,
    this.levelThree,
    this.levelFour,
    this.trainerId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  void setCreatedAt() {
    this.createdAt = DateTime.now();
  }
  void setUpdatedAt() {
    this.updatedAt = DateTime.now();
  }
/*
  Map userData() {
    return {
      "name": name,
      "otherNames": otherNames,
      "email": email,
      "msisdn": msisdn,
      "password": password,
      "status": status,
      "verified": verified,
      "token": token,
      "avatar": avatar,
      "accountVerified": accountVerified,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "deletedAt": deletedAt,
      "id": id,
      "identificationDocument": identificationDocument,
      "rememberToken": rememberToken,
      "accountNo": accountNo,
      "customerUsername": customerUsername,
    };
  }*/
}
