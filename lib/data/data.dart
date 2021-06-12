import 'package:jamborow/functions/random_digits.dart';
import 'package:jamborow/models/user.dart';
import 'package:jamborow/models/wallet.dart';

final User normuser = User(
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
);

final List<Wallet> userWallets = [
  Wallet(
    id: 1,
    userId: 1,
    balance: 35000.00,
    status: true,
  ),
  Wallet(
    id: 2,
    userId: 2,
    balance: 240000.00,
    status: true,
  ),
  Wallet(
    id: 3,
    userId: 3,
    balance: 0.00,
    status: true,
  ),
];
