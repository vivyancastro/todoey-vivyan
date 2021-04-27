import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTextTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'New task:',
              style: TextStyle(color: Colors.black87, fontSize: 20.0),
            ),
            TextField(
              autofocus: true,
              onChanged: (newText) {
                newTextTitle = newText;
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTextTitle);
                Navigator.pop(context);
              },
              child: Text('Add',
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
              color: Colors.amber[600],
            )
          ],
        ),
      ),
    );
  }
}
