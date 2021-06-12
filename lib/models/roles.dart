import 'package:meta/meta.dart';

class Role {
  final int id;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Role({
    @required this.name,
    @required this.description,
    this.createdAt,
    this.updatedAt,
    this.id,
  });
}
