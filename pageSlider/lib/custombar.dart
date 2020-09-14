import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomProgressBar extends StatefulWidget {
  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      child: CustomPaint(
        painter: BarPainter(),
      ),
    );
  }
}

class BarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);

    var fillBrush = Paint()
      ..color = Colors.black38
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    var fillBrush2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    var fillBrush3 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;
    var fillBrush4 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    // canvas.drawCircle(center, centerX, fillBrush);
    // canvas.drawRect(Offset(50, 23) & Size(200, 15), fillBrush);
    canvas.drawLine(Offset(50, 30), Offset(250, 30), fillBrush);
    canvas.drawCircle(Offset(50, 30), 15, fillBrush2);
    canvas.drawCircle(Offset(250, 30), 15, fillBrush2);
    canvas.drawCircle(Offset(150, 30), 15, fillBrush2);
    canvas.drawCircle(Offset(100, 30), 15, fillBrush2);
    canvas.drawCircle(Offset(200, 30), 15, fillBrush2);
    canvas.drawCircle(Offset(50, 30), 15, fillBrush3);
    canvas.drawCircle(Offset(250, 30), 15, fillBrush3);
    canvas.drawCircle(Offset(150, 30), 15, fillBrush3);
    canvas.drawCircle(Offset(100, 30), 15, fillBrush3);
    canvas.drawCircle(Offset(200, 30), 15, fillBrush3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
