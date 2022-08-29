import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  
  @override 
  void paint(Canvas canvas , Size size) {
    double dashWidth = 2 , dashSpace = 5 , startX = 0;
    final paint = Paint()
    ..color = Colors.white
    ..strokeWidth = 0.3;
    while (startX < size.width){
      canvas.drawLine(Offset(startX,0),Offset(startX + dashWidth , 0),paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}