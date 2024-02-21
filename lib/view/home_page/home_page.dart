import 'package:flutter/material.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';
import 'package:note_app/view/home_page/widgets/customnote.dart';
import 'package:note_app/view/note_listpage/note_listpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.mainblack,
      appBar: AppBar(
        backgroundColor: Colorconstants.mainblack,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: custonotewidget(),
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 7,
              ),
          itemCount: 2),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => NoteListpage(),
          //     ));
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return NoteListpage();
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colorconstants.mainblack,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        mini: true,
      ),
    );
  }
}
