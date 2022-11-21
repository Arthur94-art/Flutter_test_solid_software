import 'package:flutter/material.dart';

class ARGBModel {
  final double a;
  final int r;
  final int g;
  final int b;

  ARGBModel(this.a, this.r, this.g, this.b);

  Color get color => Color.fromRGBO(r, g, b, a);
}
