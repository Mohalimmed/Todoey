import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task-data.dart';
import 'package:todoey/screens/taskes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen()
      ),
    );
  }
}

