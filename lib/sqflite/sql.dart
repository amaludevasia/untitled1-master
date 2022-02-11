import 'package:flutter/material.dart';
import 'sqlopenhelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQFlite Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  // reference to our single class that manages the database
  final dbHelper = DatabaseHelper.instance;

  // homepage layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('INSERT', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),
              onPressed: _insert,
            ),
            ElevatedButton(
              child: Text('QUERY', style: TextStyle(fontSize: 20),),
              onPressed: _query,
            ),
            ElevatedButton(
              child: Text('UPDATE', style: TextStyle(fontSize: 20),),
              onPressed: _update,
            ),
            ElevatedButton(
              child: Text('DELETE', style: TextStyle(fontSize: 20),),
              onPressed: _delete,
            ),
          ],
        ),
      ),
    );
  }

  // Button onPressed methods

  void _insert() async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName : '',
      DatabaseHelper.columnAge  : 23
    };
    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }

  void _query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows!.forEach(print);
  }

  void _update() async {
    // row to update
    Map<String, dynamic> row = {
      DatabaseHelper.columnId   : 1,
      DatabaseHelper.columnName : 'wwoooowww',
      DatabaseHelper.columnAge  : 100
    };
    final rowsAffected = await dbHelper.update(row);
    print('updated $rowsAffected row(s)');
  }

  void _delete() async {
    // Assuming that the number of rows is the id for the last row.
    final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id!);
    print('deleted $rowsDeleted row(s): row $id');
  }
}




