import 'package:demo_todoey/todo_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final TodoData todoData = TodoData();
  final TextEditingController _controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller1,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Add todo title',
                    labelText: 'Here to add todo title'),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  list.addTodo(_controller1.text);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 30.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
