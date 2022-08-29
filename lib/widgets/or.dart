import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_singup/widgets/dashed_line.dart';

class Or extends StatelessWidget {
  const Or({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:30.w,left:30.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CustomPaint(painter: DashedLinePainter(),),
          ),
          SizedBox(width: 20.w,),
          const Text(
            'or',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          SizedBox(width: 20.w,),
          Expanded(
            flex: 1,
            child: CustomPaint(painter: DashedLinePainter(),),
          ),          
        ],
      ),
    );
  }
}