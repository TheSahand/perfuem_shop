import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/screens/addresses_screen.dart';
import 'package:perfume_shop/screens/personal_information_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'حساب کاربری',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 2.5.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonalInformationScreen(),
                    ));
              },
              child: Row(
                children: [
                  SvgPicture.asset('images/arrow_icon.svg'),
                  Spacer(),
                  Text(
                    'اطلاعات شخصی',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 2.w),
                  SvgPicture.asset('images/profile_icon.svg')
                ],
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressesScreen(),
                    ));
              },
              child: Row(
                children: [
                  SvgPicture.asset('images/arrow_icon.svg'),
                  Spacer(),
                  Text(
                    'آدرس ها',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 2.w),
                  SvgPicture.asset('images/address_icon.svg')
                ],
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Row(
              children: [
                SvgPicture.asset('images/arrow_icon.svg'),
                Spacer(),
                Text(
                  'تماس با ما',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 2.w),
                SvgPicture.asset('images/contact_us_icon.svg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
