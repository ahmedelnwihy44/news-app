import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:news/api/models/article_response/Articles.dart';

class DatabaseHelper {
  static Database? _db;

  static Future<Database> getDatabase() async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  static Future<Database> _initDb() async {
    final path = join(await getDatabasesPath(), 'news.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE favorites(
            url TEXT PRIMARY KEY,
            title TEXT,
            urlToImage TEXT,
            author TEXT,
            publishedAt TEXT,
            content TEXT
          )
        ''');
      },
    );
  }


  static Future<void> addFavorite(Articles article) async {
    final db = await getDatabase();
    await db.insert(
      'favorites',
      {
        'url': article.url,
        'title': article.title,
        'urlToImage': article.urlToImage,
        'author': article.author,
        'publishedAt': article.publishedAt,
        'content': article.content,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }


  static Future<List<Articles>> getFavorites() async {
    final db = await getDatabase();
    final maps = await db.query('favorites');
    return maps.map((map) => Articles.fromJson(map)).toList();
  }


  static Future<void> removeFavorite(String url) async {
    final db = await getDatabase();
    await db.delete('favorites', where: 'url = ?', whereArgs: [url]);
  }


  static Future<bool> isFavorite(String url) async {
    final db = await getDatabase();
    final result = await db.query('favorites', where: 'url = ?', whereArgs: [url]);
    return result.isNotEmpty;
  }
}