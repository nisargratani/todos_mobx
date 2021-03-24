import 'package:demo_todoey/todo.dart';
import 'package:mobx/mobx.dart';

part 'todo_data.g.dart';

class TodoData extends _TodoData with _$TodoData {}

abstract class _TodoData with Store {
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @computed
  int get lengthtodos => todos.length;

  @action
  void addTodo(String todoTitle) {
    todos.add(Todo(name: todoTitle));
  }

  @action
  void removeTodo(Todo todo) {
    todos.remove(todo);
  }

  @action
  void updateTodo(Todo todo, bool newValue) {
    todo.isDone = newValue;
  }
}
