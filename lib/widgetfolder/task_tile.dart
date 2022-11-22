import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final Function tog;
  final String text;
  // final Function LongPressed;,required this.LongPressed
  TaskTile({required this.isChecked, required this.text,required this.tog  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onLongPress:LongPressed(),
      title: Text(
        "$text ",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),

      trailing: Checkbox(
        value: isChecked,
        onChanged:(check){
          tog(check);
        },
      ),
    );
  }
}
