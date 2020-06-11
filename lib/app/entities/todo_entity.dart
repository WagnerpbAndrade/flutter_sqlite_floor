
import 'package:floor/floor.dart';
import 'package:sqlite_floor/app/entities/entity_base.dart';

@Entity(tableName: 'Todos')
class TodoEntity extends EntityBase {

  final String title;
  final String anotation;

  TodoEntity({int id, String createdAt, String updateAt, this.title, this.anotation}) : super(id: id, createdAt: createdAt, updateAt: updateAt);
}