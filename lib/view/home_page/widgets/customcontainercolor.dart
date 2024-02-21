import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.containercolor,
      this.height = 100,
      this.width = 100});

  final String containercolor;

  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(),
    );
  }
}
