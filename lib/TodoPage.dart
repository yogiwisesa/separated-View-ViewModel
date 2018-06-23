import 'package:flutter/material.dart';

import 'TodoPageView.dart';
class TodoPage extends StatefulWidget {
  @override
  TodoPageView createState() => new TodoPageView();
}

abstract class TodoPageState extends State<TodoPage> {
  @protected
  List<String> todos = new List<String>();

  @protected
  TextEditingController textcontroller = new TextEditingController();

  @protected
  void addTodo(text) {
    setState(() => todos.add(text));
    textcontroller.clear();
  }

  @protected
  void removeTodo(index) {
    setState(() => todos.removeAt(index));
  }
}