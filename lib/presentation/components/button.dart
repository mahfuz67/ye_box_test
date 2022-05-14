import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget child;
  final Function()? onTap;
  const Button({Key? key, required this.child, this.onTap, this.radius = 15, required this.color, this.width, this.height, this.padding = 10 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius!),
        ),
        padding: EdgeInsets.symmetric(vertical: padding!),
        child: Center(
          child: child
        ),
      ),
    );
  }
}
