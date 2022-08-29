import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_singup/constants.dart';
import 'package:login_singup/widgets/button.dart';
import 'package:login_singup/widgets/or.dart';
import 'package:login_singup/widgets/top_image.dart';
import 'package:login_singup/widgets/top_texts.dart';

import 'signup.dart';

class LogIn extends StatelessWidget {
  const LogIn({ Key? key }) : super(key: key);

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
                Color(0xffE5B2CA),
                Color(0xffCD82DE)
              ]
            )
          ),
          child: ListView(
            children: [
              TopImage(imagePath: logInImagePath),
              SizedBox(height: 5.h,),
              TopTexts(firstText: logInFirstText,secondText: logInSecondText,),
              SizedBox(height:45.h),
              _fields(),
              SizedBox(height: 15.h,),
              _continueButton(),
              SizedBox(height: 30.h,),
              const Or(),
              SizedBox(height: 30.h,),
              CommonButton(title: 'Create an Account', color: const Color(0xffFFFFFF).withOpacity(0.28),onPressed: () {goToSignUp(context);}),
              SizedBox(height: 30.h,)
            ],
          ),
        )
      ),
    );
  }

  Widget _fields() {
    return Container(
      margin: EdgeInsets.only(right:30.w,left:30.w),
      child: Column(
        children: [
          TextField(
            style: TextStyle(fontSize: 13.sp),
            decoration: fieldDecoration.copyWith(
              prefixIcon: const Icon(
                Icons.person_outline,
                color: Colors.black,
              )
            ) ,
          ),
          SizedBox(height: 15.h,),
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 13.sp),
            decoration: fieldDecoration.copyWith(
              prefixIcon: const Icon(
                Icons.vpn_key_rounded,
                color: Colors.black,
              )
            ) ,
          ),          
        ],
      ),
    );
  }

  Widget _continueButton() {
    return Container(
      height: 75.h,
      margin: EdgeInsets.only(right:30.w,left:30.w),
      child: MaterialButton(
        onPressed: (){},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color:const Color(0xff78258B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Continue',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            SizedBox(width: 3.w,),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 19.sp,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  void goToSignUp(BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute < void > (
        builder: (BuildContext context) => const SignUp(),
      ),
    );
  }

}