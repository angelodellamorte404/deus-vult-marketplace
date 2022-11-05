import 'dart:ffi';

import 'package:code/database/user_class.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Database? _database;
  final int _dbVersion = 1;
  final String _dbName = "users_database.db";

  DBHelper() {
    _openDB();
  }

  // Open Database
  Future<void> _openDB() async {
    final path = join(await getDatabasesPath(), _dbName);

    _database = await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(UserQuery._create);
      },
      version: _dbVersion,
    );
  }

  // Read Database
  Future<List<UserClass>> getUser() async {
    if (this._database != null) {
      var result = await this._database!.query(UserQuery._table);
      return List.generate(
        result.length,
        (index) {
          var data = result[index];

          return UserClass(
            id: int.parse("${data['id']}"),
            username: "${data['username']}",
            name: "${data['name']}",
            email: "${data['email']}",
            hp: "${data['hp']}",
            password: "${data['password']}",
          );
        },
      );
    }

    return [];
  }

  // Insert Data
  Future<void> insertUser(UserClass user) async {
    await this._database?.insert(
          UserQuery._table,
          user.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
  }

  // Remove Data
  Future<void> removeUser(UserClass user) async {
    await this._database?.delete(
      UserQuery._table,
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  // Close Database
  Future<void> closeDB() async {
    await this._database?.close();
  }
}

class UserQuery {
  static const _table = "users";
  static const _create =
      "CREATE TABLE $_table (id INT PRIMARY KEY,username TEXT, name TEXT, email TEXT, hp TEXT, password TEXT)";
  static const select = "SELECT * FROM $_table";
}
