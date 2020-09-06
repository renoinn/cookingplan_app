import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

enum TableName {
  food,
  favorite,
}

class DatabaseProvider {
  DatabaseProvider._();

  static DatabaseProvider _instance;

  factory DatabaseProvider.instance() {
    return _instance ??= DatabaseProvider._();
  }

  final _databaseName = 'cookingplan';
  final _databaseVersion = 1;

  Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    // lazily instantate the db the first time it is accessed
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: (db, version) async {
        var batch = db.batch();
        _createTableV1(batch);
        await batch.commit();
      },
      onDowngrade: onDatabaseDowngradeDelete,
    );
  }

  void _createTableV1(Batch batch) {
    batch.execute('''
    CREATE TABLE food(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      used int NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )
    ''');
    batch.execute('''
    CREATE TABLE favorite(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      description TEXT DEFAULT NULL,
      thumbnail TEXT DEFAULT NULL,
      link TEXT NOT NULL,
      displayLink TEXT DEFAULT NULL,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )
    ''');
  }
}
