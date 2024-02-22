import 'package:flutter/material.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';

class custonotewidget extends StatefulWidget {
  const custonotewidget({
    super.key,
    required this.title,
    required this.des,
    required this.date,
    required this.color,
    this.ondeletepressed,
    //  required this.onSaved,
  });

  final String title;
  final String des;
  final String date;
  final Color color;

  final VoidCallback? ondeletepressed;

  @override
  State<custonotewidget> createState() => _custonotewidgetState();
}

class _custonotewidgetState extends State<custonotewidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 270,
      decoration: BoxDecoration(
        color: widget.color,
        // color: Colorconstants.yellowcontainer,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          // first row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(color: Colorconstants.mainblack),
              ),
              Row(
                children: [
                  // edit button
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colorconstants.mainblack,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  // delete button
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colorconstants.mainblack,
                    ),
                    onPressed: () {
                      widget.ondeletepressed;
                    },
                  )
                ],
              )
            ],
          ),
          // 2nd
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.des),
            ],
          ),
          SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.date),
              SizedBox(width: 10),
              Icon(
                Icons.share,
                color: Colorconstants.mainblack,
              )
            ],
          )
        ],
      ),
    );
  }
}
