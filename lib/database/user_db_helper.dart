import 'package:code/database/user_class.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserDBHelper {
  Database? _database;
  final String _tableName = "user";
  final String _dbName = "user_database.db";
  final int _dbVersion = 1;

  UserDBHelper() {
    _initializeDB();
  }

  Future<void> _initializeDB() async {
    var path = join(await getDatabasesPath(), this._dbName);

    this._database = await openDatabase(
      path,
      onCreate: ((db, version) {
        return db.execute(
            "CREATE TABLE ${this._tableName} (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, hp TEXT, password TEXT");
      }),
      version: this._dbVersion,
    );
  }

  // READ
  Future<List> readData() async {
    if (this._database != null) {
      List<Map<String, dynamic>> result =
          await this._database!.query(this._tableName);

      return List.generate(result.length, (index) {
        var data = result[index];

        return UserClass(
          name: data['name'],
          email: data['email'],
          hp: data['hp'],
          password: data['password'],
        );
      });
    }

    return [];
  }

  // INSERT
  Future<void> insertUser(UserClass user) async {
    await this._database?.insert(
          _tableName,
          user.toMap(),
        );
  }

  // CLOSE DB
  Future<void> closeDB() async {
    await this._database?.close();
  }
}
