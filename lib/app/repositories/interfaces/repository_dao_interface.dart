
import 'package:floor/floor.dart';
import 'package:sqlite_floor/app/entities/entity_base.dart';

abstract class IRepositoryDaoInterface<T extends EntityBase> {

  @insert
  Future<int> insertItem(T item);

  @update
  Future<int> updateItem(T item);

  @delete
  Future<int> deleteItem(T item);
}