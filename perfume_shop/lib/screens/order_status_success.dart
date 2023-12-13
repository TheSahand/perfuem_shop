import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderStatusSuccessScreen extends StatefulWidget {
  const OrderStatusSuccessScreen({super.key});

  @override
  State<OrderStatusSuccessScreen> createState() =>
      _OrderStatusSuccessScreenState();
}

class _OrderStatusSuccessScreenState extends State<OrderStatusSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 7.h,
          ),
          Text(
            'وضعیت سفارش',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 3.h),
          SvgPicture.asset(
            'images/success_background.svg',
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 3.h),
          Text(
            'موفق',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2.h),
          Text(
            'خرید شما با موفقیت ثبت شد',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 23),
            height: 8.h,
            decoration: BoxDecoration(
                color: MyColors.orangeColor,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'متوجه شدم',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      )),
    );
  }
}
