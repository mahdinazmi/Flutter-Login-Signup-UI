import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback ? onPressed;
  const CommonButton({ required this.title, required this.color , this.onPressed, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      margin: EdgeInsets.only(right:30.w,left:30.w),
      child: MaterialButton(
        onPressed : onPressed ?? (){},
        elevation: 0,
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),side: BorderSide.none),
        color: color,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}