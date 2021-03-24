import 'package:demo_todoey/todo_data.dart';
import 'package:demo_todoey/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<TodoData>(
      create: (_) => TodoData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: TodoScreen(),
      ),
    );
  }
}
