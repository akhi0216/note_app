import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';

class Homepagecontroller {
  static TextEditingController titlecontroller = TextEditingController();
  static TextEditingController descontroller = TextEditingController();

  static TextEditingController datecontroller = TextEditingController();
  static Color selectcolor = Colors.white;

  List noteslist = [
    // {
    //   "title": "my note",
    //   "des":
    //       "blahhhhhhhhhhhhhhhhhhhhh",
    //   "date": "21 april",
    //   "color": Colors.white
    // },
  ];
  List notekeys = [];
  // var mybox = Hive.box('notebox');
  var mybox = Hive.box('notebox');
  // function to add
  void addData() {
    mybox.add({
      "title": titlecontroller.text,
      "des": descontroller.text,
      "date": datecontroller.text,
      // "color": selectcolor
    });
    notekeys = mybox.keys.toList();
    // noteslist.add({
    //   "title": titlecontroller.text,
    //   "des": descontroller.text,
    //   "date": datecontroller.text,
    //   "color": selectcolor
    // });
  }

  // functn to edit
  void editData(var Key) {
    mybox.put(Key, {
      "title": titlecontroller.text,
      "des": descontroller.text,
      "date": datecontroller.text,
      //"color": selectcolor
    });
    // noteslist[index] = {
    //   "title": titlecontroller.text,
    //   "des": descontroller.text,
    //   "date": datecontroller.text,
    //   "color": selectcolor
    // };
  }

  // functn to delete

  void deleteData(var key) {
    mybox.delete(key);
    notekeys = mybox.keys.toList();
  }

  // fnctn to clear
  static void clearData() {
    titlecontroller.clear();
    descontroller.clear();
    datecontroller.clear();
  }

  // on selectioncolor
  void onColorselction(newcolor) {
    selectcolor = newcolor;
  }

  init() {
    notekeys = mybox.keys.toList();
  }
}
