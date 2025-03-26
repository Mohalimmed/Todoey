import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task-data.dart';

class AddTasksModal extends StatelessWidget {
  const AddTasksModal({super.key});



  @override
  Widget build(BuildContext context) {

    TextEditingController textController = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Tasks',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              decoration: InputDecoration(
                // Border when the TextField is not focused
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey, // Border color when not focused
                    width: 2.0, // Border width
                  ),
                ),
                // Border when the TextField is focused
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent, // Border color when focused
                    width: 2.0, // Border width
                  ),
                ),
                // Background color of the TextField
                fillColor: Colors.white, // Change this to your desired background color
                filled: true, // Set to true to enable background color
              ),
              controller: textController,
            ),
            ElevatedButton(
              onPressed: (){
                      Provider.of<TaskData>(context,listen: false).addingTasks(textController.text);
                      Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(),
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
