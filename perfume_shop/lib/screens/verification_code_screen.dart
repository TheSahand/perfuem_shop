import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        SizedBox(width: double.infinity),
        SvgPicture.asset('images/login_background.svg'),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 16),
                      blurRadius: 40,
                      color: MyColors.shadowColor)
                ]),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: double.infinity),
                Text(
                  'کد تایید',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2.h),
                Text(
                  'کد ارسال شده به شماره 09180580306 را وارد کنید',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            contentPadding: EdgeInsets.all(7),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: '5',
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            contentPadding: EdgeInsets.all(7),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: '5',
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            contentPadding: EdgeInsets.all(7),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: '5',
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            contentPadding: EdgeInsets.all(7),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: '5',
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            contentPadding: EdgeInsets.all(7),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: '5',
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: MyColors.orangeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'ادامه',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '60',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'تغییر شماره تلفن',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
