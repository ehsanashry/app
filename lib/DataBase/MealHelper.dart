import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'Meal.dart';
class Dphelper{

  static final Dphelper instance=Dphelper.internal();

  factory Dphelper()=>instance;

  Dphelper.internal();


  createDatabase()


  async{
    Database db;
    WidgetsFlutterBinding.ensureInitialized();

    String path= join(await getDatabasesPath(),'book.db');


    db=await openDatabase(path,version: 1,onCreate: (Database Db,int v){
      Db.execute('CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, author TEXT)');

    });
    return db;


  }


  Future <meal> create_book(meal my_book)

  async {
    Database DP= await createDatabase();

    my_book.id = await DP.insert('books', my_book.toMap());
    return my_book;

  }

  Future<List> allBooks()
  async {
    Database DP= await createDatabase();
    return DP.query('books');
  }

  Future <int> delete(int id)

  async {
    Database DP= await createDatabase();
    return await DP.delete('books',where: 'id=?' , whereArgs: [id]);
  }









}