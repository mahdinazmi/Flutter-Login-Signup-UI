import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopTexts extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TopTexts({ required this.firstText , required this.secondText, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          secondText,
          style: TextStyle(
            fontSize: 27.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )        
      ],
    );
  }
}