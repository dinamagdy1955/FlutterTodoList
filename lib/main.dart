import 'package:flutter/material.dart';
import 'package:todolist/views/pages/todosPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dina App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoPage()
    );
  }
}
