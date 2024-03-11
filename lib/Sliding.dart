import 'package:flutter/material.dart';

class Sliding extends PageRouteBuilder {
  final Page;
  Sliding({this.Page})
      : super(
            pageBuilder: (context, animation, animationTwo) => Page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = Offset(1.0, 0.0);
              var end = Offset(0, 0);
              var tween = Tween(begin: begin, end: end);
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            });
}
