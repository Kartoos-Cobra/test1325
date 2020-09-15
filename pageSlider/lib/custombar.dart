import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomProgressBar extends StatefulWidget {
  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

int pagenumber = 0;
double dx;

class _CustomProgressBarState extends State<CustomProgressBar> {
  @override
  Widget build(BuildContext context) {
    final dp = MediaQuery.of(context).size;
    return Container(
      width: 300,
      height: dp.height / 5,
      child: CustomPaint(
        painter: BarPainter(),
      ),
    );
  }
}

class BarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final icon = Icons.done;
    var fillBrush = Paint()
      ..color = Colors.black38
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    var fillBrush2 = Paint()
      ..color = Colors.grey[300]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    var fillBrush3 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;
    var fillBrush4 = Paint()
      ..color = Colors.grey[500]
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;
    var fillBrush5 = Paint()
      ..color = Colors.green[300]
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;
    canvas.drawLine(Offset(50, 30), Offset(250, 30), fillBrush);

    TextSpan span = new TextSpan(
      text: String.fromCharCode(icon.codePoint),
      style: new TextStyle(
          fontSize: 30.0,
          fontFamily: icon.fontFamily,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );
    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr);
    tp.layout();
    switch (pagenumber) {
      case 0:
        canvas.drawCircle(Offset(50, 30), 15, fillBrush4);
        canvas.drawCircle(Offset(250, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(150, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(100, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(200, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(250, 30), 10, fillBrush3);
        canvas.drawCircle(Offset(150, 30), 10, fillBrush3);
        canvas.drawCircle(Offset(100, 30), 10, fillBrush3);
        canvas.drawCircle(Offset(200, 30), 10, fillBrush3);
        break;
      case 1:
        canvas.drawCircle(Offset(50, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(35, 15));
        canvas.drawCircle(Offset(250, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(150, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(100, 30), 15, fillBrush4);
        canvas.drawCircle(Offset(200, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(250, 30), 10, fillBrush3);
        canvas.drawCircle(Offset(150, 30), 10, fillBrush3);
        canvas.drawCircle(Offset(200, 30), 10, fillBrush3);
        break;
      case 2:
        canvas.drawCircle(Offset(50, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(35, 15));
        canvas.drawCircle(Offset(250, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(150, 30), 15, fillBrush4);
        canvas.drawCircle(Offset(100, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(85, 15));
        canvas.drawCircle(Offset(200, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(250, 30), 10, fillBrush3);
        canvas.drawCircle(Offset(200, 30), 10, fillBrush3);
        break;
      case 3:
        canvas.drawCircle(Offset(50, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(35, 15));
        canvas.drawCircle(Offset(250, 30), 10, fillBrush2);
        canvas.drawCircle(Offset(150, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(135, 15));
        canvas.drawCircle(Offset(100, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(85, 15));
        canvas.drawCircle(Offset(200, 30), 15, fillBrush4);
        canvas.drawCircle(Offset(250, 30), 10, fillBrush3);
        break;
      case 4:
        canvas.drawCircle(Offset(50, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(35, 15));
        canvas.drawCircle(Offset(250, 30), 15, fillBrush4);
        canvas.drawCircle(Offset(150, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(135, 15));
        canvas.drawCircle(Offset(100, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(85, 15));
        canvas.drawCircle(Offset(200, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(185, 15));
        break;
      case 5:
        canvas.drawCircle(Offset(50, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(35, 15));
        canvas.drawCircle(Offset(250, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(235, 15));
        canvas.drawCircle(Offset(150, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(135, 15));
        canvas.drawCircle(Offset(100, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(85, 15));
        canvas.drawCircle(Offset(200, 30), 15, fillBrush5);
        tp.paint(canvas, Offset(185, 15));
        break;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
