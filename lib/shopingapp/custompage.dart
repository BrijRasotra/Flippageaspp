import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyCustomPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width/2, size.height);
    path.quadraticBezierTo(size.width, size.height/2, size.width/2, 0);
    //path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}