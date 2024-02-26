import 'package:flutter/material.dart';
import 'package:note_app/controller/homepage_controller.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';
import 'package:note_app/view/home_page/widgets/customnote.dart';
import 'package:note_app/view/home_page/widgets/notelistpage.dart';
// import 'package:note_app/view/note_listpage/note_listpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Homepagecontroller saveobj = Homepagecontroller();
  // Homepagecontroller deleteobj = Homepagecontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.mainblack,
      appBar: AppBar(
        title: Text(
          "MY NOTES",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colorconstants.mainblack,
      ),
      body: saveobj.noteslist.isEmpty
          ? Center(
              child: Text(
                "no data found",
                style: TextStyle(color: Colorconstants.mainwhite),
              ),
            )
          : ListView.separated(
              // to reverse the ading
              shrinkWrap: true,
              reverse: true,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: custonotewidget(
                      title: saveobj.noteslist[index]["title"],
                      des: saveobj.noteslist[index]["des"],
                      date: saveobj.noteslist[index]["date"],
                      color: saveobj.noteslist[index]["color"],
                      ondeletepressed: () {
                        saveobj.deleteData(index);
                        setState(() {});
                      },
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 7,
                  ),
              itemCount: saveobj.noteslist.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return NoteListpage(
                onSavepressed: () {
                  saveobj.addData();

                  setState(() {});
                },
              );
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
