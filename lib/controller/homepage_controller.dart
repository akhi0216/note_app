import 'package:flutter/material.dart';

class Homepagecontroller {
  List noteslist = [
    {
      "title": "my note",
      "des": "blahhhh",
      "date": "21 april",
      "color": Colors.white
    },
    {
      "title": "my note",
      "des": "blahhhh",
      "date": "21 april",
      "color": Colors.white
    },
    {
      "title": "my note",
      "des": "blahhhh",
      "date": "21 april",
      "color": Colors.white
    }
  ];

  // function to add
  void addData() {
    noteslist.add({
      "title": "my note",
      "des": "blahhhh",
      "date": "21 april",
      "color": Colors.red
    });
  }
  // functn to edit

  // functn to delete

  void deleteData(int index) {
    noteslist.removeAt(index);
  }
}
