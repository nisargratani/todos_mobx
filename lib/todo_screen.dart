import 'package:demo_todoey/add_task_screen.dart';
import 'package:demo_todoey/todo_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoData>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Text('${list.lengthtodos} todos'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddTaskScreen(),
            ),
          );
        },
      ),
      body: Observer(
        builder: (_) => ListView.builder(
            itemCount: list.todos.length,
            itemBuilder: (context, index) => ListTile(
                  onLongPress: () {
                    list.removeTodo(list.todos[index]);
                  },
                  title: Text(
                    list.todos[index].name,
                    style: TextStyle(
                        decoration: list.todos[index].isDone == true
                            ? TextDecoration.lineThrough
                            : null),
                  ),
                  trailing: Checkbox(
                    value: list.todos[index].isDone,
                    onChanged: (newValue) {
                      list.updateTodo(list.todos[index], newValue);
                    },
                  ),
                )),
      ),
    );
  }
}
