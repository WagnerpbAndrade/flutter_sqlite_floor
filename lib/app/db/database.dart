

import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sqlite_floor/app/entities/todo_entity.dart';
import 'package:sqlite_floor/app/repositories/todo_repository_dao.dart';

part 'database.g.dart';

@Database(version: 1, entities: [TodoEntity])
abstract class AppDatabase extends FloorDatabase {

  TodoRespositoryDao get todoRepositoryDao;

}