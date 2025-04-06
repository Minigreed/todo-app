import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Workout", false],
      ["Breakfast", false],
    ];
  }

  void loadData() {
    toDoList = List<List<dynamic>>.from(_myBox.get("TODOLIST"));
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
