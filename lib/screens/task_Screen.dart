import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_app/provider_package_work.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/widgetfolder/task_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showModalBottomSheet<void>(
              backgroundColor: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0))),
              context: context,
              builder: (context) {
                return AddTask();
               }
              );
        },
        child: const Icon(Icons.add, size: 30),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 30.0, left: 38.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Hi Dhiraj",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                  "${Provider.of<Taskss>(context).task.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23
                      )),
                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    )),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
