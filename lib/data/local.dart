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
      version: 2, // バージョンを上げる
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE folders(id TEXT PRIMARY KEY, name TEXT, index INTEGER, contents TEXT)",
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          // バージョン1から2へのアップグレード時に `index` 列を追加
          await db.execute("ALTER TABLE folders ADD COLUMN index INTEGER");
        }
      },
    );
  }

  Future<void> insertFolder(Folder folder) async {
    try {
      print('insertFolder');
      final db = await database;
      print('insertFolder2');
      await db.insert(
        'folders',
        folder.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      print('insertFolder3');
    } catch (e) {
      print('Error inserting folder: $e');
    }
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
