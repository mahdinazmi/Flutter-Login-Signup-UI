import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_singup/constants.dart';
import 'package:login_singup/widgets/button.dart';
import 'package:login_singup/widgets/or.dart';
import 'package:login_singup/widgets/top_image.dart';
import 'package:login_singup/widgets/top_texts.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key ? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff9183DE),
                  Color(0xffA094E3)
                ]
              )
            ),
            child: ListView(
              children: [
                TopImage(imagePath: signUpImagePath),
                SizedBox(height: 5. h, ),
                TopTexts(firstText: signUpFirstText,secondText: signUpSecondText),
                SizedBox(height: 45. h, ),
                _fields(),
                SizedBox(height: 15. h, ),
                const CommonButton(title: 'Create an Account',color: Color(0xff52439A),),
                SizedBox(height: 30. h, ),
                const Or(),
                SizedBox(height: 30. h, ),
                CommonButton(title: 'Log In',color: const Color(0x00ffffff).withOpacity(0.28),),
                SizedBox(height: 30. h, ),
              ],
            ),
        ),
      ),
    );
  }

  Widget _fields() {
    return Container(
      margin: EdgeInsets.only(right: 30. w, left: 30. w),
      child: Column(
        children: [
          TextField(
            style: TextStyle(fontSize: 13.sp),
            decoration: fieldDecoration.copyWith(
              hintText: 'Username',
              hintStyle: TextStyle(color: Colors.black,fontSize: 13.sp),
              prefixIcon: const Icon(
                Icons.person_outlined,
                color: Colors.black,
              )
            ),
          ),
          SizedBox(height: 15. h, ),
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 13.sp),
            decoration: fieldDecoration.copyWith(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black,fontSize: 13.sp),
              prefixIcon: const Icon(
                Icons.vpn_key_rounded,
                color: Colors.black,
              )
            ),
          ),
        ],
      ),
    );
  }
}