import 'package:floor/floor.dart';
import 'package:flutter/material.dart';

class EntityBase {
  @PrimaryKey(autoGenerate: true)
  final int id;
  final String createdAt;
  final String updateAt;

  EntityBase({
    @required this.id,
    @required this.createdAt,
    @required this.updateAt,
  });
}
