class User {
  final int id;
  final String name;
  final String otherNames;
  final String customerUsername;
  final String email;
  final String msisdn;
  final String accountNo;
  final String password;
  final bool status;
  final bool verified;
  final String token;
  final String avatar;
  final String identificationDocument;
  final bool accountVerified;
  final String rememberToken;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;

  const User({
    this.name,
    this.otherNames,
    this.email,
    this.msisdn,
    this.password,
    this.status,
    this.verified,
    this.token,
    this.avatar,
    this.accountVerified,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.id,
    this.identificationDocument,
    this.rememberToken,
    this.accountNo,
    this.customerUsername,
  });

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
  }
}
