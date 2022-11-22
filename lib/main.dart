import 'package:flutter/material.dart';
import 'screens/task_Screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/provider_package_work.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Taskss(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}
