import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'movies.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE favourite_movies (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            image TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertFavourite(Map<String, dynamic> movie) async {
    final db = await database;
    await db.insert('favourite_movies', movie);
  }

  Future<List<Map<String, dynamic>>> getFavourites() async {
    final db = await database;
    return await db.query('favourite_movies');
  }

  Future<void> removeFavourite(String title) async {
    final db = await database;
    await db.delete('favourite_movies', where: 'title = ?', whereArgs: [title]);
  }
}
