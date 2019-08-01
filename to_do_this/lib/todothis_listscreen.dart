import 'package:flutter/material.dart';
import 'package:to_do_this/new_todo_dialog.dart';
import 'package:to_do_this/todo.dart';
import 'package:to_do_this/todolist.dart';

class ToDothisListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<ToDothisListScreen> {
  List<Todo> todos = [];

  TextEditingController controller = new TextEditingController();
    
  _toggleTodo(Todo todo, bool isChecked) {
    setState(() {
      todo.isDone = isChecked;
    });  
  }

  _addTodo() async {
    final todo = await showDialog<Todo>(   
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
  );

  if (todo != null) {
    setState(() {
      todos.add(todo);
    });
  }
}

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('ToDo.this')),
    body: TodoList(
      todos: todos,
      onTodoToggle: _toggleTodo,
      ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: _addTodo,
      ),
    );
  }
}
