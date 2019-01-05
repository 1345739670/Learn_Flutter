import 'package:flutter/material.dart';

import 'todo.dart';

class AddTodoDialog extends StatelessWidget {
  final controller = new TextEditingController();
  // TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New todo'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            // print(controller.value.text);
            // controller.clear();
            final todo = new Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}
