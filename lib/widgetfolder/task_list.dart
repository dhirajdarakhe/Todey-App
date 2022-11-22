import 'package:flutter/material.dart';
import 'package:todoey_app/provider_package_work.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';



class TaskList extends StatelessWidget {
  // final List<Task> tasks;
  // TaskList({required this.tasks});
//   @override
//   _TaskListState createState() => _TaskListState();
// }
//
// class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          text: Provider.of<Taskss>(context).task[index].name,
          isChecked:Provider.of<Taskss>(context).task[index].isDone,
          tog: (val) {
            // setState(
            //   () {
            //     Provider.of<Taskss>(context).task[index].toggeleDone();
            //   },
            // );
            Provider.of<Taskss>(context,listen: false).updateBox(Provider.of<Taskss>(context,listen: false).task[index]);
          },
            // LongPressed :(){
            //   Provider.of<Taskss>(context,listen: false).delletedMethod(Provider.of<Taskss>(context,listen: false).task[index]);
            // }
            );
      },
      itemCount: Provider.of<Taskss>(context).task.length,
    );
  }
}
