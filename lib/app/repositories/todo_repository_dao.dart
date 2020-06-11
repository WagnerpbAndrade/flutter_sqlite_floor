
import 'package:floor/floor.dart';
import 'package:sqlite_floor/app/entities/entity_base.dart';
import 'package:sqlite_floor/app/entities/todo_entity.dart';
import 'package:sqlite_floor/app/repositories/interfaces/repository_dao_interface.dart';

@dao
abstract class TodoRespositoryDao implements IRepositoryDaoInterface<TodoEntity> {
  
  @Query('SELECT * FROM Todos WHERE id = :id')
  Future<TodoEntity> getById(int id);

  @Query('SELECT * FROM Todos')
  Future<TodoEntity> getAll();
  
  }

