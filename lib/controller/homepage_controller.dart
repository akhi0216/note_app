import 'package:flutter/material.dart';

class Homepagecontroller {
  static TextEditingController titlecontroller = TextEditingController();
  static TextEditingController descontroller = TextEditingController();

  static TextEditingController datecontroller = TextEditingController();
  static Color selectcolor = Colors.white;
  List noteslist = [
    // {
    //   "title": "my note",
    //   "des":
    //       "blahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh",
    //   "date": "21 april",
    //   "color": Colors.white
    // },
  ];

  // function to add
  void addData() {
    noteslist.add({
      "title": titlecontroller.text,
      "des": descontroller.text,
      "date": datecontroller.text,
      "color": selectcolor
    });
  }

  // functn to edit
  void editData(int index) {
    noteslist[index] = {
      "title": titlecontroller.text,
      "des": descontroller.text,
      "date": datecontroller.text,
      "color": selectcolor
    };
  }

  // functn to delete

  void deleteData(int index) {
    noteslist.removeAt(index);
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
}
