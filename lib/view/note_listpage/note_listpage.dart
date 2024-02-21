import 'package:flutter/material.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';

class NoteListpage extends StatefulWidget {
  const NoteListpage({super.key});

  @override
  State<NoteListpage> createState() => _NoteListpageState();
}

class _NoteListpageState extends State<NoteListpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colorconstants.containergrey,
          borderRadius: BorderRadius.all(Radius.circular(11))),

      // child: ListView.separated(
      //     itemBuilder: (context, index) {
      //       return TextField(

      //         decoration: InputDecoration(
      //           fillColor: Colors.white,
      //           filled: true,
      //           label: Text(
      //             "Title",
      //             style: TextStyle(color: Colors.black),
      //           ),
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(7),
      //             ),
      //           ),
      //         ),
      //       );
      //     },
      //     separatorBuilder: (context, index) => SizedBox(height: 10),
      //     itemCount: 3),

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
              height: 100,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: index == 0 ? 80 : 60,
                      width: index == 0 ? 80 : 60,
                      color: Colors.pink,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  itemCount: 4))
        ],
      ),
    );
  }
}
