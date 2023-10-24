import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box

  final _myBox = Hive.box('mybox');

  //run this method if this is the 1st time ever opeing the app

  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Make Videos', false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
