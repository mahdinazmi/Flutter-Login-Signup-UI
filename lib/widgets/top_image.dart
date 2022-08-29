import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopImage extends StatelessWidget {
  final String imagePath;
  const TopImage({ required this.imagePath, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        margin: EdgeInsets.only(top:30.h),
        decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage(imagePath))
        ),
      ),
    );
  }
}