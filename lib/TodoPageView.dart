import 'package:flutter/material.dart';
import 'TodoPage.dart';

class TodoPageView extends TodoPageState {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(title: Text("Todo App")),
        body: Column(
          children: <Widget>[
            new Card(
              margin: EdgeInsets.all(10.0),
              elevation: 4.0,
              child: new Padding(
                padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  controller: textcontroller,
                  decoration: new InputDecoration(
                    hintText: 'What do you need to do?',
                    border: InputBorder.none
                  ),
                  onSubmitted: addTodo
                ),
              ),
            ),
            new Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (_, int index) => new Card(
                  elevation: 1.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: ListTile(
                    leading: new CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text((index+1).toString()),
                      radius: 15.0
                    ),
                    title: Text(
                      todos[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis
                    ),
                    trailing: new InkWell(
                      child: Icon(Icons.delete),
                      onTap: () => removeTodo(index)
                    ),
                  )
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}