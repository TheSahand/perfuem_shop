import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/screens/cart_screen.dart';
import 'package:perfume_shop/screens/home_screen.dart';
import 'package:perfume_shop/screens/login_screen.dart';
import 'package:perfume_shop/screens/profile_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'IY'),
          home: LoginScreen(),
        );
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/home.svg',
                  color: MyColors.iconColor,
                ),
                activeIcon: Column(
                  children: [
                    SvgPicture.asset('images/home.svg'),
                    SizedBox(height: 5),
                    Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: MyColors.orangeColor, shape: BoxShape.circle),
                    )
                  ],
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/cart.svg',
                  color: MyColors.iconColor,
                ),
                activeIcon: Column(
                  children: [
                    SvgPicture.asset(
                      'images/cart.svg',
                      color: MyColors.orangeColor,
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: MyColors.orangeColor, shape: BoxShape.circle),
                    )
                  ],
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/favorite.svg',
                  color: MyColors.iconColor,
                ),
                activeIcon: Column(
                  children: [
                    SvgPicture.asset(
                      'images/favorite.svg',
                      color: MyColors.orangeColor,
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: MyColors.orangeColor, shape: BoxShape.circle),
                    )
                  ],
                ),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/profile.svg',
                  color: MyColors.iconColor,
                ),
                activeIcon: Column(children: [
                  SvgPicture.asset(
                    'images/profile.svg',
                    color: MyColors.orangeColor,
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: MyColors.orangeColor, shape: BoxShape.circle),
                  ),
                ]),
                label: 'Profile')
          ]),
      body: IndexedStack(
        index: currentIndex,
        children: [HomeScreen(), CartScreen(), HomeScreen(), ProfileScreen()],
      ),
    );
  }
}
