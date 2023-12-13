import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({super.key});

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset('images/back_icon.svg')),
          )
        ],
        title: Text(
          'آدرس ها',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Text('sss');
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 23),
            height: 8.h,
            decoration: BoxDecoration(
                color: MyColors.orangeColor,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'افزودن آدرس جدید',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(width: 2.w),
                SvgPicture.asset('images/plus_icon.svg')
              ],
            )),
          )
        ],
      ),
    );
  }
}
