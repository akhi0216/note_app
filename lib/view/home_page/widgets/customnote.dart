import 'package:flutter/material.dart';
import 'package:note_app/utils/color_constants/color_constants.dart';

class custonotewidget extends StatelessWidget {
  const custonotewidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 200,
      decoration: BoxDecoration(
        color: Colorconstants.yellowcontainer,
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
                "first note",
                style: TextStyle(color: Colorconstants.mainblack),
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colorconstants.mainblack,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colorconstants.mainblack,
                  )
                ],
              )
            ],
          ),
          // 2nd
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("iaaaa"),
            ],
          ),
          SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("tue,feb20,2024"),
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
