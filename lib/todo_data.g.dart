// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoData on _TodoData, Store {
  Computed<int> _$lengthtodosComputed;

  @override
  int get lengthtodos => (_$lengthtodosComputed ??=
          Computed<int>(() => super.lengthtodos, name: '_TodoData.lengthtodos'))
      .value;

  final _$todosAtom = Atom(name: '_TodoData.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$_TodoDataActionController = ActionController(name: '_TodoData');

  @override
  void addTodo(String todoTitle) {
    final _$actionInfo =
        _$_TodoDataActionController.startAction(name: '_TodoData.addTodo');
    try {
      return super.addTodo(todoTitle);
    } finally {
      _$_TodoDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(Todo todo) {
    final _$actionInfo =
        _$_TodoDataActionController.startAction(name: '_TodoData.removeTodo');
    try {
      return super.removeTodo(todo);
    } finally {
      _$_TodoDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTodo(Todo todo, bool newValue) {
    final _$actionInfo =
        _$_TodoDataActionController.startAction(name: '_TodoData.updateTodo');
    try {
      return super.updateTodo(todo, newValue);
    } finally {
      _$_TodoDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
lengthtodos: ${lengthtodos}
    ''';
  }
}
