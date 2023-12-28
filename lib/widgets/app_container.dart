import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  AppContainer({
    Key? key,
    required this.title,
    this.subTitle = '60',
    this.color = const Color.fromARGB(255, 167, 216, 239),
    this.height = 120,
    this.width = 180,
    this.margin = const EdgeInsets.all(0),
    this.titleFont = 18,
    this.subTitleFont = 24,
    this.textColor = Colors.black,
  }) : super(key: key);

  final String title;
  String subTitle;
  final Color? color;
  final double height, width;
  final EdgeInsetsGeometry margin;
  final double titleFont, subTitleFont;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 75,
            width: 180,
            child: Center(
              child: Text(
                title,
                style:
                    TextStyle(color: textColor, fontSize: titleFont, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
            height: 10,
          ),
          SizedBox(
            height: 35,
            width: 180,
            child: Center(
              child: Text(
                subTitle,
                style: TextStyle(
                    color: textColor,
                    fontSize: subTitleFont, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
