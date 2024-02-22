import 'package:flutter/material.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';

class NoteListpage extends StatefulWidget {
  const NoteListpage({super.key});

  @override
  State<NoteListpage> createState() => _NoteListpageState();
}

class _NoteListpageState extends State<NoteListpage> {
  List colorslist = [
    Colorconstants.containerone,
    Colorconstants.containertwo,
    Colorconstants.containerthree,
    Colorconstants.containerfour
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, bottomsetstate) => Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: Colorconstants.containergrey,
            borderRadius: BorderRadius.all(Radius.circular(11))),
        child: Column(
          children: [
            // 1st
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Title",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Date",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
                height: 120,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          print(index);
                          selectedindex = index;
                          bottomsetstate(() {
                            // selectedindex = index;
                          });
                        },
                        child: Center(
                          child: Container(
                            height: index == selectedindex ? 100 : 50,
                            width: index == selectedindex ? 100 : 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colorconstants.mainwhite),
                                color: colorslist[index]),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: 4)),

            SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Center(
                      child: Text(
                        "save",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Center(
                      child: Text(
                        "cancel",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
