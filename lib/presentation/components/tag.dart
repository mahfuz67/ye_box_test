import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  const Tag({Key? key, required this.text, required this.color, required this.textColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const  EdgeInsets.symmetric(vertical: 5, horizontal: 9),
      child: Center(
          child: Text(
            text, style: TextStyle(color: textColor, fontSize: 10 ),
          )
      ),
    );
  }
}
