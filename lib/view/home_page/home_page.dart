import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:hive/hive.dart';
//import 'package:hive/hive.dart';
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
  var mybox = Hive.box('notebox');
  @override
  void initState() {
    saveobj.init();
    setState(() {});
    super.initState();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.mainblack,
      appBar: AppBar(
        title: Text(
          "My Notes",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colorconstants.mainblack,
      ),
      body: saveobj.notekeys.isEmpty
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
              itemBuilder: (context, index) {
                var element = mybox.get(saveobj.notekeys[index]);
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: custonotewidget(
                    // title: mybox.get(saveobj.notekeys[index])["title"],
                    // des: mybox.get(saveobj.notekeys[index])["des"],
                    // date: mybox.get(saveobj.notekeys[index])["date"],
                    // color: Colors.white,
                    title: element["title"],
                    des: element["des"],
                    date: element["date"],
                    color: Colors.white,
                    // color: element["color"],
                    // delete
                    ondeletepressed: () {
                      saveobj.deleteData(index);
                      setState(() {});
                    },

                    // edit
                    oneditpressed: () {
                      Homepagecontroller.titlecontroller.text =
                          element["title"];
                      Homepagecontroller.descontroller.text = element["des"];
                      Homepagecontroller.datecontroller.text = element["date"];

                      // to show bottom sheet
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return NoteListpage(
                            isedit: true,

                            onSavepressed: () {
                              //
                              saveobj.editData(index);

                              setState(() {});
                              Homepagecontroller.clearData();
                              //
                              Navigator.pop(context);
                            },
                            // end of bottom sheet
                          );
                        },
                      );

                      setState(() {});
                    },
                  ),

                  // custom note ends
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 7,
                  ),
              itemCount: saveobj.notekeys.length),
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
                  Homepagecontroller.clearData();
                  //
                  Navigator.pop(context);
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
