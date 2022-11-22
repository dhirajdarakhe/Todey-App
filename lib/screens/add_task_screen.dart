import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_app/provider_package_work.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  // final Function AddTaskData;
  // AddTask({required this.AddTaskData});
//   @override
//   _AddTaskState createState() => _AddTaskState();
// }

// class _AddTaskState extends State<AddTask> {
 final   _textControlller  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0))),
      child: Column(
        // mainAxisSize: MainAxisSize.,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(
              "Add TASK",
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: TextFormField(
              controller: _textControlller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0),
            child: FlatButton(
              onPressed: (){
                // Provider.of<Taskss>(context).task.add(Task(name: _textControlller.text));   //i tried to add data from user but i'm unable to listen the data in task_screen ;                 //
                // Navigator.pop(context);                                                     solution -> create the function ins
                // _textControlller.clear();
                Provider.of<Taskss>(context, listen: false).addTask(_textControlller.text);
                Navigator.pop(context);_textControlller.clear();
              },
              child: Container(
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                child: Center(
                    child: Text(
                  "ADD",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
