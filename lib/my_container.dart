import 'package:flutter/material.dart';

class MyContainerWidget extends StatelessWidget {
  final Color color;
  final Widget? child;

  MyContainerWidget({this.color = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: child,
        ),
      ),
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
