import 'package:flutter/material.dart';

import '../constant.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDochange;
  final onDelete;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDochange,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          onToDochange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.red),
            child: IconButton(
                onPressed: () {
                  onDelete(todo.id);
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
