import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/consulta_model.dart';

class DatabaseServices {
  DatabaseServices._internal();

  static final DatabaseServices instance = DatabaseServices._internal();
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDataBase();
    return _database!;
  }

  Future<Database> _initDataBase() async {
    final databasePah = await getDatabasesPath();
    final fullPath = join(databasePah, 'migo_cosultas.db');

    return openDatabase(
      fullPath,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
                           CREATE TABLE consultas(
                                id INTEGER PRIMARY KEY AUTOINCREMENT,
                                endpoint TEXT NOT NULL,
                                fecha_consulta TEXT NOT NULL,
                                codigo_http INTEGER NOT NULL,
                                respuesta TEXT NOT NULL                           
                           ); 
                        ''');
      },
    );
  }

  Future<int> insertarConsulta(ConsultaModel consulta) async {
    final db = await database;
    final maps = consulta.toMap()..remove('id');

    return db.insert('consultas', maps);
  }

  Future<List<ConsultaModel>> obtenerConsultas() async {
    final db = await _database;
    final rows = await db.query('consultas', orderBy: 'id DESC');
  }
}
