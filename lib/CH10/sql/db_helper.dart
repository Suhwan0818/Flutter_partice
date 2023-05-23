import 'package:fl_5414060/mid_5414060/person.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import './db_model.dart';

class DBHelper {
  static Database? _db;

  Future<Database> getDb() async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  Future<Student> add(Student student) async {
    var dbClient = await getDb();
    student.id = await dbClient.insert('student', student.toMap());
    return student;
  }

  Future<List<Student>> getStudents() async {
    var dbClient = await getDb();
    List<Map> maps = await dbClient.query('student', columns: ['id', 'name']);
    List<Student> students = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        students.add(Student.fromMap(maps[i]));
      }
    }
    return students;
  }

  Future<int> delete(int id) async {
    var dbClient = await getDb();
    return await dbClient.delete(
      'student',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(Student student) async {
    var dbClient = await getDb();
    return await dbClient.update(
      'student',
      student.toMap(),
      where: 'id = ?',
      whereArgs: [student.id],
    );
  }

  Future close() async {
    var dbClient = await getDb();
    dbClient.close();
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'student.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute("CREATE TABLE student (id INTEGER PRIMARY KEY, name TEXT)");
  }
}
