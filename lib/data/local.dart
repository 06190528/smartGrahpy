import 'dart:async';
import 'package:path/path.dart';
import 'package:smart_graph_app/customClass/folder/folder.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  //シングルトンパターン
  //容量を無駄にしないために、インスタンスを1つだけ作成する

  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  DatabaseService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'folders.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE folders(id TEXT PRIMARY KEY, name TEXT, contents TEXT)",
        );
      },
    );
  }

  Future<void> insertFolder(Folder folder) async {
    final db = await database;
    await db.insert(
      'folders',
      folder.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Folder?> getFolderById(String id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'folders',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return FolderExtensions.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<void> deleteFolder(String id) async {
    final db = await database;
    await db.delete(
      'folders',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
